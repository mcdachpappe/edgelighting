.class Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;
.super Ljava/lang/Object;
.source "SliceLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;


# direct methods
.method constructor <init>(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v0, v0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroidx/slice/SliceViewManager;->bindSlice(Landroid/content/Intent;)Landroidx/slice/Slice;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v1, v1, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceViewManager:Landroidx/slice/SliceViewManager;

    iget-object v2, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v2, v2, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mUri:Landroid/net/Uri;

    iget-object v3, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    iget-object v3, v3, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->mSliceCallback:Landroidx/slice/SliceViewManager$SliceCallback;

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceViewManager;->registerSliceCallback(Landroid/net/Uri;Landroidx/slice/SliceViewManager$SliceCallback;)V

    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    invoke-static {v1, v0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$100(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "SliceLiveData"

    const-string v2, "Error binding slice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl$1;->this$0:Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;->access$200(Landroidx/slice/widget/SliceLiveData$SliceLiveDataImpl;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
