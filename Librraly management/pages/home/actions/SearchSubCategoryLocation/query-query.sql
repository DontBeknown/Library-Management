SELECT
    sc.subcategory_id,
    sc.subcategory_name,
    sc.category_id,
    scl.subcatergorylocate_id,
    scl.shelf_id AS shelf_id,
    loc.shelf_id AS loc_shelf_id,
    loc.floor,
    loc.section
FROM
    public.subcategory sc
JOIN
    public.subcategorylocation scl ON sc.subcategory_id = scl.subcategory_id
JOIN
    public.location loc ON scl.shelf_id = loc.shelf_id
WHERE sc.subcategory_name LIKE '%' || {{ui.sublocationForm.value}} || '%';