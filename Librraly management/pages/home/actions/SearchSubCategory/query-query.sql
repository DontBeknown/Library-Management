SELECT 
    sc.subcategory_id, 
    sc.subcategory_name, 
    sc.category_id, 
    c.category_name
FROM 
    public.subcategory sc
INNER JOIN 
    public.category c 
ON 
    sc.category_id = c.category_id
WHERE 
    sc.subcategory_name LIKE '%' || {{ui.SubcategorySearchBar.value}} || '%';