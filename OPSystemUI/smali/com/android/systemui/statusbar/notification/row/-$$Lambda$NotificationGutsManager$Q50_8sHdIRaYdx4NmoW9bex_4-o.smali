.class public final synthetic Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private final synthetic f$2:Landroid/service/notification/StatusBarNotification;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$2:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$0:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$2:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->lambda$initializeNotificationInfo$4$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V

    return-void
.end method
