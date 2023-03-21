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
  uses: oncase/scora-cleaner-gcr@latest
  with:
    project_id: ${{ vars.PRJ_NAME }}
    image_name: ${{ vars.image_name }}
```
