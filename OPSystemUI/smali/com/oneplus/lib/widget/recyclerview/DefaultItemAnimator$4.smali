.class Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->animateRemoveImpl(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

.field final synthetic val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iput-object p2, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->dispatchRemoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$600(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-static {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;->access$700(Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->this$0:Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    iget-object p0, p0, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator$4;->val$holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->dispatchRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    return-void
.end method
