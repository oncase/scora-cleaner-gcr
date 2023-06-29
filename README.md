# Scora Cleaner GCR

Clear untagged images in Artifact Registry or Container Registry.

## Inputs

|     Name     |               Description               | Required | Default  |
| :----------: | :-------------------------------------: | :------: | -------- |
|  `registry`  |      Where the image is registered      | `false`  | `gcr.io` |
| `project_id` |       The id of your GCP project        |  `true`  | `null`   |
| `image_name` | The name of the image you want to clean |  `true`  | `null`   |

## Example usage

```yaml
- name: Clear untagged images
  uses: oncase/scora-cleaner-gcr@master
  with:
    project_id: ${{ vars.PROJECT_ID }}
    image_name: ${{ vars.IMAGE_NAME }}
```
