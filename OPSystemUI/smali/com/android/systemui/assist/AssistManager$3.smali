.class Lcom/android/systemui/assist/AssistManager$3;
.super Ljava/lang/Object;
.source "AssistManager.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAssistantGestureCompletion(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager;->onGestureCompletion(F)V

    return-void
.end method

.method public onAssistantProgress(F)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/assist/AssistManager$3;->this$0:Lcom/android/systemui/assist/AssistManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/assist/AssistManager;->onInvocationProgress(IF)V

    return-void
.end method
