# Introduction to SQL and PostgreSQL ✅

A small course repository containing SQL scripts and example data for learning PostgreSQL and basic SQL concepts.

Author: Marc Linster

Last updated: 2026-01-12

---

## 📌 Overview

The `setup.sql` script creates and initializes three databases used in the course:

- **`dlh1`** — empty (exercise skeleton)
- **`dlh2`** — empty (exercise skeleton)
- **`dlh3`** — initialized with example tables and sample data (customers, products, purchases)

---

## ⚙️ Prerequisites

- PostgreSQL (server and `psql` client)
- A terminal (macOS / Linux / Windows WSL)

---

## 🚀 Setup

To create the databases and load the sample data, run the `setup.sql` script with `psql`.

Example:

```bash
psql -h localhost -U postgres -f setup.sql
```

If you want to initialize or reset only `dlh3` using the dataset file, you can run:

```bash
psql -h localhost -d dlh3 -U postgres -f dlh3_data_set.sql
```

(You may need to add `-p 5432` or other connection options depending on your environment.)

---

## 🗂 Repository files

- `setup.sql` — Creates the three databases used in the course and wires up any necessary roles/settings.
- `dlh1.sql` — SQL used in class for the `dlh1` exercises.
- `dlh3.sql` — SQL used in class for the `dlh3` exercises.
- `dlh3_data_set.sql` — Called by `setup.sql` (or run directly) to initialize `dlh3` with tables and sample data.

---

## 🤝 Contributing

Contributions and improvements are welcome — feel free to open an issue or submit a pull request.

---

## 📄 License

The course materials are licensed under the Creative Commons License.
See the `LICENSE` file for license details.
