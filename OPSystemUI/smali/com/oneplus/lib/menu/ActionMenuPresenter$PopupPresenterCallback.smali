.class Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getRootMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getCallback()Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    move-object v2, p1

    check-cast v2, Lcom/oneplus/lib/menu/SubMenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v1, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iget-object p0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getCallback()Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v0

    :cond_1
    return v0
.end method
