# Module Testing

A github actions workflow `module-test.yml` will perform a test deploy and destroy of the new module modifications.


This test also uses a TFC workspace and the CLI workflow. 

You will noticed in `main.tf` we use the following local path (`./module/pet`) source for the module, instead of `../..` which works when using TF OSS.:

```hcl
module "pet" {
    source = "./module/pet"
    string_length = 5
}
```

This local path is generated by GitLab actions workflow in `module-test.yml`

```yaml
 - name: Set up local module
        run: |
          mkdir - p modules/pet
          cp ../../*.tf modules/pet
          cp -R ../../templates modules/pet/
          cat << EOF > backend.tf
          terraform {
          cloud {}
          }
          EOF
```