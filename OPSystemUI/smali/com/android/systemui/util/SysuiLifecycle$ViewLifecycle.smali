.class Lcom/android/systemui/util/SysuiLifecycle$ViewLifecycle;
.super Ljava/lang/Object;
.source "SysuiLifecycle.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SysuiLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewLifecycle"
.end annotation


# instance fields
.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Lcom/android/systemui/util/SysuiLifecycle$ViewLifecycle;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/SysuiLifecycle$ViewLifecycle;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/SysuiLifecycle$ViewLifecycle;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/SysuiLifecycle$ViewLifecycle;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object p1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method
