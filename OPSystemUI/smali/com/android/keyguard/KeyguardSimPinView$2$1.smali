.class Lcom/android/keyguard/KeyguardSimPinView$2$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$2;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$2;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$2;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$500(Lcom/android/keyguard/KeyguardSimPinView;Z)V

    return-void
.end method
