<template>
    <div class="sel-tmplist-box">
        <!-- <i-form-item label="模板名称" > -->
         <i-form :model="formData"  label-width="100px">
            <i-form-item label="楼层:" :rules="[{required:true, message:'请输入楼层', trigger:'blur'}]">
               <i-input v-model.trim='formData.floorName'>
                   <template slot="append">层</template>
               </i-input>

            </i-form-item>
         </i-form>
        <div class="hpms-button-box">
            <div class="right-button-box" style="padding-bottom: 20px;">
                <i-button @click.stop="unset()">取消</i-button>
                <i-button @click.stop="submit()" type="primary">提交</i-button>
            </div>
        </div>
    </div>
</template>


<script>
export default {
    data(){
        return {
            labelWidth:'95px',
            formData:{
                floorId:'',
                floorName:'',
                index:'',
            },
            
        }
    },
    mounted(){
    },
    methods: {
        init(floorId,floorName,index){
            this.formData.floorId=floorId;
            this.formData.floorName=floorName;
            this.formData.index=index;
        },
        unset(){
            this.$emit('closeDialog');
        },
        submit(){
            var ru={
                floorName:/^((-\d+)|(0+)|(\d+))$/, //正负整数包含0
            };
            let formData=this.formData;
            if( !ru.floorName.test(formData.floorName) || formData.floorName<-5 || formData.floorName>100 ){
                this.$message.error('楼层请输入-5到100之间的整数'); 
                return ;
            }
            this.$emit('submit',this.formData.floorId,this.formData.floorName,this.formData.index);
        }
       
    }
}
</script>

