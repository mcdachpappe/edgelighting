.class Lcom/android/systemui/statusbar/notification/NotificationListController$2;
.super Ljava/lang/Object;
.source "NotificationListController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationListController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationListController$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisionedChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationListController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationListController;->access$200(Lcom/android/systemui/statusbar/notification/NotificationListController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    return-void
.end method
