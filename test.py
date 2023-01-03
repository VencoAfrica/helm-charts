from frappe.commands.site import _new_site
new_site("chude.venco.africa", "root", "root-password", admin_password="admin",verbose=True, install_apps=["erpnext","estate_manager","mpesa_integration","meter_management","simple_payments","control_central_client"], source_sql=None, force=None, no_mariadb_socket=True,install_app=None, db_name=None, db_type=None, db_host="frappe-bench-erpnext-mariadb", db_password="root-password", db_port="3306")


# _new_site(None, "demochude.venco.africa", "root","root-password","admin",False, ["erpnext","estate_manager","mpesa_integration","meter_management","simple_payments","control_central_client"], None, True,True, False, "root-password", "mariadb", "frappe-bench-erpnext-mariadb","3306",True)

# _new_site(db_name, site, mariadb_root_username=None, mariadb_root_password=None,admin_password=None, verbose=False, install_apps=None, source_sql=None, force=False,no_mariadb_socket=False, reinstall=False,  db_password=None, db_type=None, db_host=None,db_port=None, new_site=False):


%prun -T "/home/frappe/perf.txt" _new_site(None, "demochude.venco.africa", "root","root-password","admin",False, ["erpnext","estate_manager","mpesa_integration","meter_management","simple_payments","control_central_client"], None, True,True, False, "root-password", "mariadb", "frappe-bench-erpnext-mariadb","3306",True)

%prun -T "/home/frappe/perf_without_sorting.txt" _new_site(None, "demochude.venco.africa", "root","all0wm3n0t","admin",False, ["erpnext","estate_manager","mpesa_integration","meter_management","simple_payments","control_central_client"], None, True,True, True, "all0wm3n0t", "mariadb", "db.venco.africa","3306",True)
