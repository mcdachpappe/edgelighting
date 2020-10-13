.class Lcom/android/systemui/statusbar/NotificationMediaManager$2;
.super Landroid/media/session/MediaController$Callback;
.source "NotificationMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->DEBUG_MEDIA:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG_MEDIA: onMetadataChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationMediaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$300(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->clearCache()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$402(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$200(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationMediaManager;->DEBUG_MEDIA:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEBUG_MEDIA: onPlaybackStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationMediaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$100(Lcom/android/systemui/statusbar/NotificationMediaManager;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$200(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V

    :cond_2
    return-void
.end method
