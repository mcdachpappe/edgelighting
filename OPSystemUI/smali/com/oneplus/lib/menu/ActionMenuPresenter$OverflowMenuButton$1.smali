.class Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;
.super Lcom/oneplus/lib/widget/ForwardingListener;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

.field final synthetic val$this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iput-object p3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->val$this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->getPopup()Lcom/oneplus/lib/menu/MenuPopup;

    move-result-object p0

    return-object p0
.end method

.method public onForwardingStarted()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onForwardingStopped()Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton$1;->this$1:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    const/4 p0, 0x1

    return p0
.end method
