.class public final synthetic Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;->f$0:Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;->f$1:Z

    iput p3, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;->f$0:Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;

    iget-boolean v1, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;->f$1:Z

    iget p0, p0, Lcom/android/systemui/bubbles/-$$Lambda$BubbleController$BubblesImeListener$k3Ccv-01hiK8jFFaKEuMmcHqId4;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/bubbles/BubbleController$BubblesImeListener;->lambda$onImeVisibilityChanged$0$BubbleController$BubblesImeListener(ZI)V

    return-void
.end method
