.class Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;
.super Landroid/content/BroadcastReceiver;
.source "AssistHandleReminderExpBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior$4;->this$0:Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;

    invoke-static {}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$600()Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;->access$502(Lcom/android/systemui/assist/AssistHandleReminderExpBehavior;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    return-void
.end method
