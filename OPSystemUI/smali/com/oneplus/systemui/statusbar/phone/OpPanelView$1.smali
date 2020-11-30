.class Lcom/oneplus/systemui/statusbar/phone/OpPanelView$1;
.super Ljava/lang/Object;
.source "OpPanelView.java"

# interfaces
.implements Lcom/oneplus/systemui/statusbar/phone/OpExpandButton$OnExpandButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->initExpandButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpandButtonClick()V
    .locals 2

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->TAG:Ljava/lang/String;

    const-string v1, "onExpandButtonClick expand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->expand(Z)V

    return-void
.end method

.method public onOutSideClick(F)V
    .locals 3

    sget-object v0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOutSideClick position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpPanelView;

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpPanelView;->mOpExpandButton:Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpExpandButton;->dismiss()V

    :cond_0
    return-void
.end method
