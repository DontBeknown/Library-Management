SELECT ar.*, sc.subcategory_name, scl.shelf_id, l.*
FROM public.areaofrespond ar
JOIN public.subcategory sc ON ar.subcategory_id = sc.subcategory_id
JOIN public.subcategorylocation scl ON sc.subcategory_id = scl.subcategory_id
JOIN public.location l ON scl.shelf_id = l.shelf_id
WHERE ar.staff_id = ? AND sc.subcategory_name LIKE '%' || ? || '%';