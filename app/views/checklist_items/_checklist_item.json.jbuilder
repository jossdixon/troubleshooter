json.extract! checklist_item, :id, :checklist_id, :template_item_id, :done, :resolved_the_issue, :order, :created_at, :updated_at
json.url checklist_item_url(checklist_item, format: :json)
