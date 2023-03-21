# Scora Cleaner GCR

Clear untagged images in gcr (Container Registry)

## Inputs

|     Name     |               Description               | Required | Default |
| :----------: | :-------------------------------------: | :------: | ------- |
| `project_id` |       The id of your GCP project        |  `true`  | `null`  |
| `image_name` | The name of the image you want to clean |  `true`  | `null`  |

## Example usage

```yaml
- name: Clear untagged images
  uses: oncase/scora-cleaner-gcr@master
  with:
    project_id: ${{ vars.PROJECT_ID }}
    image_name: ${{ vars.IMAGE_NAME }}
```
