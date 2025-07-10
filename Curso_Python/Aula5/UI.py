import json
import tkinter as tk
from tkinter import ttk, messagebox, simpledialog

DATA_FILE = "dados.json"

class App(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title("Visualizador de Dados")
        self.geometry("800x400")
        self._create_widgets()
        self._load_data()

    def _create_widgets(self):
        frame_top = tk.Frame(self)
        frame_top.pack(fill="x", padx=5, pady=5)

        tk.Label(frame_top, text="Buscar por nome:").pack(side="left")
        self.search_var = tk.StringVar()
        tk.Entry(frame_top, textvariable=self.search_var).pack(side="left", padx=5)
        tk.Button(frame_top, text="Pesquisar", command=self._on_search).pack(side="left")
        tk.Button(frame_top, text="Limpar filtro", command=self._on_clear).pack(side="left", padx=5)

        cols = ("nome","sobrenome","idade","nascimento","maior","altura")
        self.tree = ttk.Treeview(self, columns=cols, show="headings")
        for c in cols:
            self.tree.heading(c, text=c.capitalize())
            self.tree.column(c, anchor="center")
        self.tree.pack(fill="both", expand=True, padx=5, pady=5)
        self.tree.bind("<Double-1>", self._on_edit)

        frame_bot = tk.Frame(self)
        frame_bot.pack(fill="x", padx=5, pady=5)
        tk.Button(frame_bot, text="Adicionar", command=self._on_add).pack(side="left")
        tk.Button(frame_bot, text="Excluir", command=self._on_delete).pack(side="left", padx=5)

    def _load_data(self):
        try:
            with open(DATA_FILE, "r", encoding="utf-8") as f:
                self.data = json.load(f)
        except FileNotFoundError:
            self.data = []
        self._refresh_tree(self.data)

    def _save_data(self):
        with open(DATA_FILE, "w", encoding="utf-8") as f:
            json.dump(self.data, f, ensure_ascii=False, indent=2)

    def _refresh_tree(self, rows):
        for i in self.tree.get_children():
            self.tree.delete(i)
        for idx, item in enumerate(rows):
            vals = (
                item["nome"],
                item["sobrenome"],
                item["idade"],
                item["nascimento"],
                "Sim" if item["maior"] else "Não",
                item["altura"]
            )
            self.tree.insert("", "end", iid=idx, values=vals)

    def _on_search(self):
        key = self.search_var.get().lower()
        filtered = [r for r in self.data if key in r["nome"].lower()]
        self._refresh_tree(filtered)

    def _on_clear(self):
        self.search_var.set("")
        self._refresh_tree(self.data)

    def _on_add(self):
        self._open_editor()

    def _on_edit(self, evt):
        sel = self.tree.selection()
        if sel:
            idx = int(sel[0])
            self._open_editor(idx)

    def _on_delete(self):
        sel = self.tree.selection()
        if not sel:
            return
        idx = int(sel[0])
        if messagebox.askyesno("Excluir", "Deseja realmente excluir este registro?"):
            self.data.pop(idx)
            self._save_data()
            self._load_data()

    def _open_editor(self, idx=None):
        # idx=None -> adicionar; senão editar self.data[idx]
        is_new = idx is None
        dialog = tk.Toplevel(self)
        dialog.title("Novo Registro" if is_new else "Editar Registro")
        fields = {}
        specs = [
            ("nome", str), ("sobrenome", str), ("idade", int),
            ("nascimento", int), ("maior", bool), ("altura", float)
        ]
        for i, (key, typ) in enumerate(specs):
            tk.Label(dialog, text=key.capitalize()+":").grid(row=i, column=0, sticky="e", padx=5, pady=2)
            var = tk.StringVar()
            if not is_new:
                var.set(str(self.data[idx][key]))
            entry = tk.Entry(dialog, textvariable=var)
            entry.grid(row=i, column=1, padx=5, pady=2)
            fields[key] = (var, typ)

        def on_save():
            try:
                rec = {}
                for key, (var, typ) in fields.items():
                    val = var.get().strip()
                    if typ is bool:
                        rec[key] = val.lower() in ("1","sim","true","yes")
                    else:
                        rec[key] = typ(val)
                if is_new:
                    self.data.append(rec)
                else:
                    self.data[idx] = rec
                self._save_data()
                self._load_data()
                dialog.destroy()
            except Exception as e:
                messagebox.showerror("Erro", f"Valor inválido: {e}")

        tk.Button(dialog, text="Salvar", command=on_save).grid(row=len(specs), column=0, columnspan=2, pady=5)

if __name__ == "__main__":
    App().mainloop()
