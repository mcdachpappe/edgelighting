.class Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iput-object p2, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    iput-object p4, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {p1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$container:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$3;->val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v1}, Lcom/oneplus/support/core/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->moveToState(Lcom/oneplus/support/core/fragment/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
