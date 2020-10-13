.class Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdComputeTask;
.super Landroid/os/AsyncTask;
.source "ImageProcessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/glwallpaper/ImageProcessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThresholdComputeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field private mUpdateHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/AsyncTask;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdComputeTask;->mUpdateHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Float;
    .locals 4

    const/4 p0, 0x0

    aget-object p0, p1, p0

    const p1, 0x3f4ccccd    # 0.8f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;-><init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;)V

    invoke-virtual {v0, p0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;->compute(Landroid/graphics/Bitmap;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed at computing threshold, color space="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ThresholdComputeTask: Can\'t get bitmap"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdComputeTask;->doInBackground([Landroid/graphics/Bitmap;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Float;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdComputeTask;->mUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdComputeTask;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdComputeTask;->onPostExecute(Ljava/lang/Float;)V

    return-void
.end method
