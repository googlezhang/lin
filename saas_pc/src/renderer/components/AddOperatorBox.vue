<template>
  <div>
    <el-dialog :visible.sync="boxShow" class="operator-box" :close-on-click-modal=false :show-close=false>
      <div class="dialog-header" slot="title">
        <p class="title">预览</p>
        <span class="iconfont icon-close iconfont-close" @click="closeBox"></span>
      </div>
      <div class="dialog-bd">
        <div class="line-wrap">
          <div class="line">
            <div class="line-con">
              <div class="inp-wrap">
                <el-input type="text" ref="inp" @focus="inpFocus" v-model="url" readonly></el-input>
              </div>
              <a href="javascript:void(0);" class="btn" @click="copyUrl">复制链接</a>
            </div>
          </div>
        </div>
        <a href="javascript:void(0);" class="btn btn-confirm" @click="closeBox">确认</a>
      </div>
    </el-dialog>
  </div>
</template>
<script>
export default {
  name: 'addOperatorBox',
  props: {
    addOperatorBoxShow: {
      type: Boolean,
      default: false
    }
  },
  watch: {
    boxShow (newVal) {
      if (newVal) this.getUrl()
      this.$emit('update:addOperatorBoxShow', newVal)
    },
    addOperatorBoxShow (newVal) {
      this.boxShow = newVal
    }
  },
  data () {
    return {
      boxShow: this.addOperatorBoxShow,
      url: ''
    }
  },
  created () {
    this.getUrl()
  },
  methods: {
    inpFocus () {
      this.$refs.inp.select()
    },
    copyUrl () {
      let inp = this.$refs.inp
      inp.focus()
      inp.select()
      document.execCommand('copy');
      this.$message({
        message: '复制成功',
        type: 'success'
      });
    },
    closeBox () {
      this.boxShow = false
    },
    getUrl () {
      let paramsWrap = {params: {type: 1}}
      this.$axios.get(this.$httpUrl.addFleetYardman, paramsWrap ).then(res => {
        if (res) {
          this.url = res.share_url
        }
      })
    }

  }
}
</script>
<style lang="less" scoped>
.operator-box {
  & /deep/ .el-dialog {
    width: 394px;
    height: 240px;
    border-radius: 4px;
    .el-dialog__body {
      padding: 0px;
    }
    .el-dialog__footer {
      text-align: center;
      padding: 0;
    }
  }
  .dialog-header {
    position: relative;
    .title {
      font-size: @fontsize-large;
      color: @color-dark-grey;
    }
    .iconfont-close {
      position: absolute;
      right: 0;
      top: 4px;
      padding: 10px;
      color: @color-grey;
      font-size: 18px;
      cursor: pointer;
    }
  }
  .dialog-bd {
    .line-wrap {
      padding: 0 30px 0 36px;
    }
    .line {
      .line-con {
        margin-top: 46px;
        overflow: hidden;
        .inp-wrap {
          float: left;
          margin-left: 14px;
          width: 228px;
          padding-bottom: 15px;
        }
        & /deep/ .el-input__inner {
          height: 32px;
          line-height: 32px;
          border-right: 0;
          border-radius: 0;
        }
        .btn {
          float: left;
          width: 85px;
          border-radius: 0;
        }
        .qrcode-wrap {
          margin-left: 14px;
          .qrcode {
            width: 138px;
            height: 138px;
            margin-right: 47px;
            vertical-align: middle;
          }
          p {
            font-size: 14px;
            color: #333;
            display: inline-block;
            .txt {
              display: block;
            }
            .dot {
              background-color: #000;
              border-radius: 50%;
              font-size: 0;
              vertical-align: middle;
              &.dot-b {
                padding: 3px;
                margin: 0 2px;
              }
              &.dot-s {
                padding: 2px;
                &:first-of-type {
                  margin-left: 4px;
                }
                &:last-of-type {
                  margin-right: 4px;
                }
              }
            }
          }
        }
      }
    }
    .btn-confirm {
      display: block;
      width: 163px;
      height: 36px;
      margin: 30px auto 0;
      line-height: 36px;
    }
  }
}
</style>

