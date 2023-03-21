# Scora Cleaner GCR

Clear untagged images in gcr (Container Registry)

## Inputs

- ### `project_id`

  **Required** Project ID.

- ### `image_name`
  **Required** The name of the image you want to clean.

## Example usage

```yaml
uses: oncase/scora-cleaner-gcr@v1
with:
  project_id: { { vars.project_id } }
  image_name: { { vars.image_name } }
```
