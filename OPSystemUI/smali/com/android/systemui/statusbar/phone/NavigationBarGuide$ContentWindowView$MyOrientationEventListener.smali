.class Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "NavigationBarGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$300(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarGuide;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide;->access$400(Lcom/android/systemui/statusbar/phone/NavigationBarGuide;)I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView$MyOrientationEventListener;->this$1:Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;->access$500(Lcom/android/systemui/statusbar/phone/NavigationBarGuide$ContentWindowView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
