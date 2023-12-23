import Lake
open Lake DSL

package «hello-lean» where
  -- add package configuration options here

lean_lib «HelloLean» where
  -- add library configuration options here

@[default_target]
lean_exe «hello-lean» where
  root := `Main
