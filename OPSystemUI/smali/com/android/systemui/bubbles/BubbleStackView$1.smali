.class Lcom/android/systemui/bubbles/BubbleStackView$1;
.super Ljava/lang/Object;
.source "BubbleStackView.java"

# interfaces
.implements Lcom/android/systemui/bubbles/BubbleStackView$SurfaceSynchronizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bubbles/BubbleStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncSurfaceAndRun(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/bubbles/BubbleStackView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/bubbles/BubbleStackView$1$1;-><init>(Lcom/android/systemui/bubbles/BubbleStackView$1;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
