.class Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 12

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    monitor-exit p2

    return-void

    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_4

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v4, v6

    add-long v6, v2, v4

    iget-object v8, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v8, p1}, Lcom/android/settingslib/applications/ApplicationsState;->access$500(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v8, v8, v2

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v8, v8, v4

    if-nez v8, :cond_2

    iget-wide v8, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    :cond_2
    iput-wide v6, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v6, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v6, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v6, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->dataSize:J

    iput-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v4, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->access$600(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v1, p1}, Lcom/android/settingslib/applications/ApplicationsState;->access$500(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSize:J

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->access$600(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v1, p1}, Lcom/android/settingslib/applications/ApplicationsState;->access$700(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-wide v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSize:J

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->access$600(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x4

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    iget p1, p1, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    monitor-exit p2

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
