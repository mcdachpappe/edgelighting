.class Lcom/oneplus/aod/OpAodLightEffectContainer$1;
.super Ljava/lang/Object;
.source "OpAodLightEffectContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OpAodLightEffectContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$100(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$300(Lcom/oneplus/aod/OpAodLightEffectContainer;)[Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v2}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$000(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$600(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v1}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$500(Lcom/oneplus/aod/OpAodLightEffectContainer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$200(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {v0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$400(Lcom/oneplus/aod/OpAodLightEffectContainer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$1;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-static {p0}, Lcom/oneplus/aod/OpAodLightEffectContainer;->access$008(Lcom/oneplus/aod/OpAodLightEffectContainer;)I

    return-void
.end method
