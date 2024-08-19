<?php
/**
 * �s�v�ƌ��������č폜���Ă͂����Ȃ��t�@�C���Ȃ̂Œ���
 */
// {{{ requires
require_once("/var/www/precs/besliselect/html/require.php");
require_once(CLASS_PATH . "pages/LC_Page.php");

/**
 * ���[�U�[�J�X�^�}�C�Y�p�̃y�[�W�N���X
 *
 * �Ǘ���ʂ��玩�����������
 *
 * @package Page
 */
class LC_Page_User extends LC_Page {

    // }}}
    // {{{ functions

    /**
     * Page ������������.
     *
     * @return void
     */
    function init() {
        parent::init();
        $this->tpl_column_num = 3;
    }

    /**
     * Page �̃v���Z�X.
     *
     * @return void
     */
    function process() {
        $objView = new SC_SiteView();
        $objLayout = new SC_Helper_PageLayout_Ex();

        // ���C�A�E�g�f�U�C�����擾
        $objLayout->sfGetPageLayout($this);

        // ��ʂ̕\��
        $objView->assignobj($this);
        $objView->display(SITE_FRAME);
    }

    /**
     * �f�X�g���N�^.
     *
     * @return void
     */
    function destroy() {
        parent::destroy();
    }
}


// }}}
// {{{ generate page

$objPage = new LC_Page_User();
register_shutdown_function(array($objPage, "destroy"));
$objPage->init();
$objPage->process();


?>
