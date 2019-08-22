<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>用户充值协议</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	 <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge" chrome="1">
    <meta name="viewport" content="initial-scale=1, width=device-width, maximum-scale=1, user-scalable=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
    <meta name="screen-orientation" content="portrait">
    <meta name="x5-orientation" content="portrait">
    <link rel="stylesheet" href="<%=basePath%>newStyle/weixin/css/WeChatEnd.css">
    <link rel="stylesheet" href="<%=basePath%>newStyle/weixin/jquery-weui/css/weui.min.css">
    <link rel="stylesheet" href="<%=basePath%>newStyle/weixin/jquery-weui/css/jquery-weui.css">
    <style>
    	body {padding: 0 0.5rem;}
    	.agreement-title{text-align: center;font-size:0.48rem;padding: 0.5rem 0;}
    	.title {font-size:0.4rem;color:#333;margin:0.45rem 0 0.3rem 0;}
    	p,.p2{color:#666;font-size:0.34rem;line-height:2;text-align:justify;margin-bottom:0.26rem;}
    	.p2 {padding-left:15px;}
		strong {color:#555;}
		a{color:#349dea;}
    </style>
</head>	
<body class="weic-bgfff">
	<h3 class="agreement-title">用户充值平台服务协议</h3>
	<h4 class="title">【首部及导言】</h4>
	<p>杭州网晶科技有限公司（为了便于理解，以下简称“本公司”）依据本协议为用户（以下简称“您”）提供揽客在线充值服务。<strong>本协议由您与本公司共同缔结，本协议具有合同效力。</strong></p>
	<p><strong>揽客在线充值是基于微信支付提供的为收付款人之间进行货币资金转移的服务，在使用在线充值服务前，您应当阅读并遵守本协议和<a href="https://weixin.qq.com/cgi-bin/readtemplate?t=weixin_business_pay">《微信支付用户服务协议》</a>。
	您在使用本服务时，还需使用微信软件服务，所以您应阅读并遵守<a href="https://weixin.qq.com/agreement?lang=zh_CN">《腾讯微信软件许可及服务协议》</a>。由于微信支付服务是本公司依托微信及微信公众平台提供的服务，您在使用本服务时，还需使用微信软件服务，所以您应阅读并遵守<a href="https://mp.weixin.qq.com/cgi-bin/announce?action=getannouncement&key=1503979103&version=1&lang=zh_CN&platform=2">《微信公众平台服务协议》</a>。
	本公司在此特别提醒您务必审慎阅读并充分理解各条款内容，特别是免除或者减轻我们责任的条款、限制您权利的条款、管辖与法律适用条款、争议解决方式条款，以及开通或使用某项服务的单独协议。限制、免责条款可能以黑体加粗形式提示您注意。
除非您已阅读并接受本协议所有条款，否则您无权使用本服务。您使用本服务即视为您已阅读并同意本协议的约束，如您对本协议有任何疑问，应向客服咨询。</strong></p>
	<h4 class="title">一、【本服务】</h4>
	<p>1.1 揽客在线充值平台服务，指本公司基于微信支付依托微信及微信公众平台为收付款人之间提供的货币资金转移服务,具体是指本公司向用户提供的技术服务平台，用户通过技术服务平台可以用微信向第三方或其代理人为自己或他人进行指定产品或业务的充值（下称“本服务”）</p>
	<p>1.2 您理解并同意，<strong>本服务的充值流程，可能因适用场景和功能存续情况的变化而发生调整，所以具体以本公司实际提供的服务流程为准。您已知悉，本协议项下的服务仅是本公司为您提供充值业务的技术服务平台，本公司不是向您提供充值服务的服务商或代理商，也不是您的代理商、合伙人、雇员或雇主等经营关系人。充值平台上提供、接收充值的主体均为第三方，而非本公司。您和提供充值服务的主体进行充值合作，本公司不参与您与第三方的具体充值合作。</strong></p>
	<p>1.3 为了满足国家法律法规关于非银行支付机构的运营规定,<strong>您授权本公司通过微信向国家机关、金融机构、企事业单位查询、核实您的身份信息、账户信息和外汇购买额度。</strong></p>
	<h4 class="title">二、【账户和信息安全】</h4>
	<p>2.1 您应自行设置微信号的登录密码和微信支付密码，并予以妥善保管。若您的微信号注销，则与其关联的支付账户也随之注销，使得您无法通过该微信号使用本服务。<strong>您授权本公司在法律规定的范围内保存您的姓名、身份证号、手机号、银行卡号、交易订单、交易记录等信息，以供向您持续性地提供和推广优质服务。您同意：</strong></p>
	<p class="p2"><strong>2.1.1 您应按照本公司要求提供并及时更新您的信息，若您提供的信息错误、不实、过期或不完整，本公司有权暂停或终止向您提供部分或全部本服务。</strong></p>
	<p class="p2"><strong>2.1.2 您应当准确提供并及时更新您的联系方式，以便本公司与您进行及时、有效联系。您应承担因通过这些联系方式无法与您取得联系而导致的您在使用本服务过程中遭受的不利后果。</strong></p>
	<p class="p2"><strong>2.1.3 您应及时更新您的身份信息及相关资料，因您未及时更新导致本服务无法使用或微信支付账户被他人冒用的，您应当承担相应责任。</strong></p>
	<p class="p2"><strong>2.1.4 若因国家法律法规、部门规章或监管机构的要求，本公司需要您补充提供任何身份信息或相关资料时，如您不能及时提供，本公司有权暂停或终止向您提供部分或全部本服务。</strong></p>
	<p>2.2 您应妥善保管下列信息、资料和硬件设备：</p>
	<p class="p2">（1）银行卡及其密码、CVV码、有效期等卡片信息；</p>
	<p class="p2">（2）微信号及其登录密码；</p>
	<p class="p2">（3）微信支付密码、手势密码；</p>
	<p class="p2">（4）手机等移动终端及SIM卡信息、二维码(条码)信息；</p>
	<p class="p2">（5）指纹信息、虹膜信息、人脸信息、声纹信息等生物识别信息等。</p>
	<p>本公司特别提醒您：<strong>您应妥善保管上述资料、信息和硬件设备，并确保您的手机等移动终端设备在安全、无病毒、未被入侵、未被监控、未被非法控制的环境下运行和使用。当您使用完毕后，应安全退出。因您保管不善可能导致遭受盗号或密码失窃，责任由您自行承担。若您泄露了上述信息中的任意一项或遗失了上述硬件设备，由此导致的风险和损失应由您自行承担。</strong></p>
	<p><strong>2.3 本公司有权根据国家法律法规、规章制度、行业规范、监管政策和要求的规定，对您的支付账户的数量、类别、限额、功能进行调整，调整的方式将根据您的支付账户风险管理情况而定，若您已依法申请调整并审核通过的，以审核通过的内容为准。</strong></p>
	<h4 class="title">三、【本服务的使用】</h4>
	<p>3.1 您的微信号在登录状态下发出的支付指令均视为您本人发出的支付指令。您理解并同意，<strong>因资金划转的及时性，支付指令一旦发出即立即生效、不可撤销，本公司有权根据您发出的支付指令进行资金扣划和归集操作。</strong>
		您应妥善保管您的手机等电子设备、支付密码、短信校验码、数字证书、电子签名、以及用于微信支付的条码、二维码等信息和资料，<strong>因您泄露、遗失、复制、转交前述信息和资料而导致的损失，由您自行承担。</strong>
	</p>
	<p>3.2 为了给您带来更好的支付体验，您理解并同意，<strong>对于一定额度、一定次数内的支付交易（具体以相关使用规则为准），本公司无需验证您的微信支付密码即可根据您或商户或收款人的交易指令通过微信对您的“零钱”和关联银行账户进行资金扣划和归集操作。</strong></p>
	<p>3.3 您同意并授权：<strong>1）本公司将您申请开通银行账户所需的个人信息（包括但不限于姓名、身份证号码、手机号码、银行卡信息等）传输至开户银行；2）本公司可将交易款项通过微信从您的零钱余额划转至您指定的用于支付的银行账户；3）本公司可将交易款项从您指定的用于支付的银行账户进行划扣，以完成交易。</strong>您应按照您与开户银行的约定使用银行账户，如出现下列情况之一，<strong>本公司有权立即中止该项服务：</strong></p>
	<p class="p2">（1） 您将本服务用于非法目的；</p>
	<p class="p2">（2） 您违反法律法规、协议约定或账户使用规则；</p>
	<p class="p2">（3） 本公司认为向您提供本服务存在风险的；</p>
	<p class="p2">（4） 您的银行账户无效、有效期届满或注销等情况；</p>
	<p class="p2">（5） 银行的系统故障、系统升级。</p>
	<p>3.4 若您开通了微信指纹支付功能，<strong>即视为您同意本公司在您使用微信指纹支付时，无需校验您的支付密码和短信动态码，依据您的手机等移动终端设备发出的指纹校验信息即可按照您或商户或收款人的交易指令通过微信对您的“零钱”和关联银行账户进行资金扣划和归集操作。</strong></p>
	<p>3.5 您理解并同意，<strong>本公司并非银行或金融机构，无法提供资金即时到账服务，您认可资金于途中流转需要合理时间，本公司不因此承担责任。</strong></p>
	<p>3.6 您使用本公司服务期间，<strong>本公司无须对为您保管、代收或代付款项的货币贬值、汇率损失和利息损失及其他风险担责，并且本公司无须向您支付此等款项的任何孳息。</strong></p>
	<p><strong>3.7 当您使用本服务时，如您未遵守法律法规、本协议及相关操作提示和业务规则，由此造成的风险和损失由您自行承担，本公司不向您承担任何风险和损失。</strong></p>
	<p>3.8 您使用本服务时，应当仔细确认交易及其金额后进行支付。<strong>本公司有权根据您的指令扣划资金给收款人，届时您不应以未在交易单据中签名、签名不符、非本人意愿交易等原因要求本公司退款或承担其他责任。</strong></p>
	<p><strong>3.9 您对使用本服务过程中发出指令的合法性、真实性、完整性及有效性承担责任，本公司依照您的指令进行操作的责任由您自行承担。</strong></p>
	<p>3.10 您应按照微信的要求完善您的身份信息以最终达到实名认证， 否则您可能会受到支付的限制，且本公司对此造成的后果不负有直接或间接的责任，直至您达到实名认证的标准。</p>
	<p><strong>3.11 您同意本公司有权以电子邮件、官方网站公告、电话或传真等方式通知您关于使用本服务的信息。</strong></p>
	<p>3.12 您承诺不为任何非法目的或以任何非法方式使用本服务，也不将本服务用于法律、法规禁止或限制持有或交易物品的交易。</p>
	<p>3.13 您不得利用本服务实施下列任一行为：</p>
	<p class="p2">（1） 反对宪法所确定的基本原则，危害国家安全、泄漏国家秘密、颠覆国家政权、破坏国家统一；</p>
	<p class="p2">（2） 侵害他人名誉、隐私权、商业秘密、商标权、著作权、专利权及其他权利；</p>
	<p class="p2">（3） 冒用他人名义使用本服务或您提交的电话号码与身份证号无法通过校验的；</p>
	<p class="p2">（4） 从事任何不法交易行为，如贩卖枪支、毒品、禁药、盗版软件，在网上买卖POS机（包括MPOS）、刷卡器等受理终端，或贩卖其他违禁物；</p>
	<p class="p2">（5） 提供赌博资讯或以任何方式引诱他人参与赌博；</p>
	<p class="p2">（6） 涉嫌实施或实施洗钱、套现或进行传销活动；</p>
	<p class="p2">（7） 使用无效信用卡或他人信用卡进行交易；</p>
	<p class="p2">（8） 使用无效银行账户或他人银行账户进行交易；</p>
	<p class="p2">（9） 侵害本服务系統；</p>
	<p class="p2">（10） 违反法律法规、监管规定、本公司网站（https://lanke8.cc）的条款、协议、规则、通告等相关规定；</p>
	<p class="p2">（11）出租、出借、出售、购买银行账户或者支付账户，假冒他人身份或者虚构代理关系开立银行账户或者支付账户；</p>
	<p class="p2">（12） 从事其他违反国家法律、法规、规章及政策法令的行为，或其他违反本协议的行为。</p>
	<p><strong>3.14 您同意，对于您通过微信支付发生的交易，您授权本公司按照您与您的交易对象之间的协议及其制定并发布的规则进行处理。同时，您授权本公司有权从第三方获取您的相关信息（包括但不限于交易商品描述、物流信息、行为信息、账户相关信息等）以用于验证交易的真实性和合法性。</strong></p>
	<h4 class="title">四、【服务费用】</h4>
	<p>您理解，本服务附带营运成本，为了持续营运，<strong>本公司有权向您收取服务费用，服务费用的收取方式以您在使用本服务时收到的各类通知、告知为准。本公司发出的有关收费的各类通知、告知均为本协议的组成部分，您若在收到有关收费的各类通知或告知后仍然使用本服务，则视为您已无条件同意按照相关通知、告知所约定的收费标准和收费条件向本公司支付服务费用。</strong></p>
	<h4 class="title">五、【遵守法律监管】</h4>
	<p>5.1 您在使用本服务过程中应当遵守相关的法律法规，并尊重社会道德和风俗习惯。如果您的行为违反了法律法规或道德风俗，您应当为此独立承担责任。</p>
	<p>5.2 如您所属的地区禁止或限制本协议内容的全部或部分，则您应立即停止使用本服务。</p>
	<p>5.3 您应避免因使用本服务而使本公司卷入政治和公共事件，否则本公司有权暂停或终止向您提供服务。</p>
	<h4 class="title">六、【责任范围及限制】</h4>
	<p><strong>6.1 本公司仅对本协议中所列明的义务承担责任，且该责任范围仅以可以合理预见的您实际遭受的经济损失为限。</strong></p>
	<p>6.2 您理解并同意，<strong>本服务是按照现有技术和条件所能达到的现状提供的，本公司将尽最大努力向您提供服务，确保服务的连贯性和安全性，但无法保证该服务完全符合您的预期，也不能随时预见和防范法律、技术以及其他风险，包括但不限于不可抗力、病毒、木马、黑客攻击、系统不稳定、第三方服务瑕疵、政府行为等原因可能导致的服务中断、数据丢失以及其他的损失和风险。</strong></p>
	<h4 class="title">七、【不可抗力及其他免责事由】</h4>
	<p><strong>7.1 在使用本服务的过程中，可能会遇到不可抗力等风险因素，使本服务发生中断、延迟或受阻。不可抗力是指不能预见、不能克服、不能避免且对一方或双方造成重大影响的客观事件，包括但不限于洪水、地震、瘟疫和风暴等自然灾害以及战争、动乱、政府行为等社会事件。出现上述情况时，本公司将努力在第一时间与相关单位配合及时进行修复，但由此给您造成的损失本公司在法律允许的范围内免责。</strong></p>
	<p><strong>7.2 本公司作为技术服务平台仅按现状提供服务，在法律允许的范围内，本公司对以下情形导致的服务中断、延迟受阻不承担责任：</strong></p>
	<p class="p2"><strong>（1） 受到计算机病毒、木马或其他恶意程序、黑客攻击的破坏；</strong></p>
	<p class="p2"><strong>（2） 您或本公司或第三方的电脑软件、系统、硬件和通信线路出现故障；</strong></p>
	<p class="p2"><strong>（3） 您操作不当；</strong></p>
	<p class="p2"><strong>（4） 您通过非本公司授权的方式使用本服务；</strong></p>
	<p class="p2"><strong>（5） 银行系统或银行网络出现故障；</strong></p>
	<p class="p2"><strong>（6） 其他本公司无法控制或合理预见的情形。</strong></p>
	<p><strong> 7.3 您在使用本服务的过程中，本公司不对下列风险担责：</strong></p>
	<p class="p2"><strong>（1） 来自他人匿名或冒名的含有威胁、诽谤、令人反感或非法内容的信息；</strong></p>
	<p class="p2"><strong>（2） 遭受他人误导、欺骗或其他原因而导致的任何心理、生理上的伤害以及经济上的损失；</strong></p>
	<p class="p2"><strong>（3） 其他因网络信息或您行为引起的风险。</strong></p>
	<p><strong>7.4 您在使用本服务的过程中，本公司在法律规定的范围内可处理违法违规内容，但其不构成本公司的义务或承诺。</strong></p>
	<h4 class="title">八、【隐私保护】</h4>
	<p>本公司重视对您隐私的保护，您的个人隐私信息将根据中国有关隐私的法律和本公司的协议受到保护与规范。</p>
	<h4 class="title">九、【用户注意事项】</h4>
	<p><strong>9.1 您理解并同意：您应当通过本公司提供或认可的方式使用本服务。您依本协议条款所取得的权利不可转让。</strong></p>
	<p><strong>9.2用户在使用本软件及服务时，须自行承担如下来自本公司不可掌控的风险内容，包括但不限于：</strong></p>
	<p class="p2"><strong>9.2.1 您在使用本服务时，由于不可抗拒因素可能引起的个人信息丢失、泄漏等风险； </strong></p>
	<p class="p2"><strong>9.2.2您理解并同意由于无线网络信号不稳定、无线网络带宽小等原因，所引起的支付失败、支付页面无法打开、页面打开速度慢等风险。</strong></p>
	<p class="p2"><strong>9.2.3 用户对其所充值的产品或业务享有合法权益，保证不会侵犯任何第三方的合法权益，保证不会违反国家相关法律法规的规定。</strong></p>
	<p><strong>9.3第三方产品和服务</strong></p>
	<p class="p2"><strong>9.3.1您在本平台上为第三方充值时，除遵守本协议约定外，还应遵守第三方的用户协议。</strong></p>
	<p class="p2"><strong>9.3.2如前所述，本公司仅为您提供充值业务的技术服务平台，本公司不是向您提供充值服务的服务商或代理商，也不是您的代理商、合伙人、雇员或雇主等经营关系人。本公司不参与您与第三方的具体合作服务事项。第三方应向您就您在本公司充值平台上所享受的充值服务提供发票，您理解并明白，本公司并不是向您提供发票的主体，您不会向本公司索要发票。</strong></p>
	<h4 class="title">十、【协议的生效与变更】</h4>
	<p><strong>10.1您使用本公司的服务即视为您已阅读本协议并接受本协议的约束。</strong></p>
	<p><strong>10.2本公司有权根据业务运营的调整需要，修订本协议的内容，并提前通过本公司网站或微信公众号公布最新的服务协议，您应关注并了解本公司发布的最新服务协议。</strong></p>
	<p><strong>10.3本协议条款变更后，如果您继续使用本公司提供的软件或服务，即视为您已接受修改后的协议。如果您不接受修改后的协议，应当停止使用本公司提供的软件或服务。</strong></p>
	<h4 class="title">十一、【服务的变更、中断、终止】</h4>
	<p><strong>11.1本公司可能会对服务内容进行变更，也可能会中断、中止或终止服务。</strong></p>
	<p><strong>11.2您理解并同意，本公司有权自主决定经营策略。在本公司发生合并、分立、收购、资产转让时，本公司可向第三方转让本服务下相关资产；本公司也可在单方通知您后，将本协议下部分或全部服务转交由第三方运营或履行。具体受让主体以本公司通知的为准。</strong></p>
	<p><strong>11.3如发生下列任何一种情形，本公司有权不经通知而中断或终止向您提供的服务：</strong></p>
	<p class="p2"><strong>（1）根据法律规定您应提交真实信息，而您提供的个人资料不真实、或与注册时信息不一致又未能提供合理证明； </strong></p>
	<p class="p2"><strong>（2）您违反相关法律法规或本协议的约定；</strong></p>
	<p class="p2"><strong>（3）按照法律规定或主管部门的要求；</strong></p>
	<p class="p2"><strong>（4）出于安全的原因或其他必要的情形。</strong></p>
	<p><strong>11.4本公司有权按本协议的约定进行收费。若您未按时足额付费，本公司有权中断、中止或终止提供服务。</strong></p>
	<h4 class="title">十二、【法律适用及争端解决】</h4>
	<p><strong>12.1 本协议签订地为中华人民共和国浙江省杭州市江干区。</strong></p>
	<p><strong>12.2 本协议的成立、生效、履行、解释及纠纷解决，适用中华人民共和国大陆地区法律（不包括冲突法）。</strong></p>
	<p><strong>12.3 您和本公司因本协议产生任何纠纷或争议的，首先应友好协商解决；协商不成的，您同意将纠纷或争议提交至本协议签订地（中国浙江省杭州市江干区）有管辖权的人民法院管辖。</strong></p>
	<p>12.4 本协议所有条款的标题仅为阅读方便，本身并无实际涵义，不能作为本协议涵义解释的依据。</p>
	<p>12.5 本协议条款无论因何种原因部分无效或不可执行，其余条款仍有效，对双方具有约束力。</p>
	<h4 class="title">十三、【其他条款】</h4>
	<p>13.1 本公司基于提供本服务所发布的各项公告、规则等作为本协议的有效组成部分，与本协议具有同等法律效力。具体公告、规则等内容以本公司发布的为准。</p>
	<p>13.2 如果您对本协议或本服务有意见或建议，可与客服部门联系，我们会给予您必要的帮助。</p>
	<h4 class="title" style="margin:1rem 0;">杭州网晶科技有限公司保留本协议的解释权。</h4>
	<!--移动端适配，px转化为rem-->
<script src="<%=basePath%>newStyle/weixin/lib-flexible-2.0/index.js"></script>
<script src="<%=basePath%>newStyle/weixin/jquery-weui/js/jquery-2.1.4.js"></script>
<script src="<%=basePath%>newStyle/weixin/jquery-weui/js/jquery-weui.js"></script>
<script>
</script>
</body>
</html>