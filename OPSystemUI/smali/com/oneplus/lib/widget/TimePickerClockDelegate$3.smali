.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;->animationOutInputTimeField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/RadialTimePickerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$500(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$600(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$700(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p0, v0}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$200(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)Lcom/oneplus/lib/widget/TextInputTimePickerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/TextInputTimePickerView;->showInputBlock(Z)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/TimePickerClockDelegate$3;->this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$302(Lcom/oneplus/lib/widget/TimePickerClockDelegate;Z)Z

    return-void
.end method
