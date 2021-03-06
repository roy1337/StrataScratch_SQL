Classify Business Type

Classify each business as either a restaurant, cafe, school, or other. A restaurant should have the word 'restaurant' in the business name. For cafes, either 'cafe', 'café', or 'coffee' can be in the business name. 'School' should be in the business name for schools. All other businesses should be classified as 'other'. Output the business name and the calculated classification.


select distinct business_name,
(case when lower(business_name) like any(array['%restaurant%']) then 'restaurant'
when lower(business_name) like any(array['%cafe%','%café%','%coffee%']) then 'cafe'
when lower(business_name) like any(array['%school%']) then 'school'
else 'other' end) as Classification

from sf_restaurant_health_violations
