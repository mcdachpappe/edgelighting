.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/PluginFragment;

.field private final synthetic f$1:Landroid/util/ArrayMap;

.field private final synthetic f$2:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final synthetic f$3:Landroid/content/Context;

.field private final synthetic f$4:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/PluginFragment;Landroid/util/ArrayMap;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$0:Lcom/android/systemui/tuner/PluginFragment;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$1:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$2:Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$3:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$4:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$0:Lcom/android/systemui/tuner/PluginFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$1:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$2:Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$3:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$$Lambda$PluginFragment$iW8kXrJfaof7fDZHqMxR_RNftYk;->f$4:Landroidx/preference/PreferenceScreen;

    move-object v5, p1

    check-cast v5, Landroid/content/pm/PackageInfo;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/tuner/PluginFragment;->lambda$loadPrefs$0$PluginFragment(Landroid/util/ArrayMap;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/content/Context;Landroidx/preference/PreferenceScreen;Landroid/content/pm/PackageInfo;)V

    return-void
.end method
