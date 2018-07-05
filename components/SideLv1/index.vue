<template lang="jade">
   .SideLv1
      Logo
      PackList(:packs="packs")
</template>



<script lang="coffee">
   module.exports =
      components:
         'Logo':     require('./Logo').default
         'PackList': require('./PackList').default

      computed:
         packs: -> @$store.state.doc.packs ? []
</script>



<style lang="less">
   .SideLv1 {
      height: 100%;
      padding: 20px 0;
      background-color: #272E3D;
      overflow: scroll;

      > .home,
      > .pack {
         display: block;
         padding: 10px 20px;
      }

      > .home {
         text-align: center;
         font-family: "Futura";
         font-size: 28px;
         color: #CCC;
         text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1);
      }

      > .pack {
         text-align: center;
         font-weight: 500;
         font-size: 14px;
         color: #CCC;

         &:hover {
            color: #272E3D;
            background-color: white;
         }

         &[is-current-pack] {
            font-weight: 500;
         }
      }
   }
</style>