.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$Pf9b4xR3WdydZqpSHpd3WHttUBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$Pf9b4xR3WdydZqpSHpd3WHttUBw;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$Pf9b4xR3WdydZqpSHpd3WHttUBw;->f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$Pf9b4xR3WdydZqpSHpd3WHttUBw;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarRemoteInputCallback$Pf9b4xR3WdydZqpSHpd3WHttUBw;->f$1:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->lambda$onWorkChallengeChanged$0$StatusBarRemoteInputCallback(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-void
.end method
