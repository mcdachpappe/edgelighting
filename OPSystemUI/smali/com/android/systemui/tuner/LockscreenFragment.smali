.class public Lcom/android/systemui/tuner/LockscreenFragment;
.super Landroidx/preference/PreferenceFragment;
.source "LockscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/LockscreenFragment$ActivityButton;,
        Lcom/android/systemui/tuner/LockscreenFragment$ShortcutButton;,
        Lcom/android/systemui/tuner/LockscreenFragment$LockButtonFactory;,
        Lcom/android/systemui/tuner/LockscreenFragment$Adapter;,
        Lcom/android/systemui/tuner/LockscreenFragment$Item;,
        Lcom/android/systemui/tuner/LockscreenFragment$App;,
        Lcom/android/systemui/tuner/LockscreenFragment$StaticShortcut;,
        Lcom/android/systemui/tuner/LockscreenFragment$Holder;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mTunables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/tuner/TunerService$Tunable;",
            ">;"
        }
    .end annotation
.end field

.field private mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    return-void
.end method

.method private varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public static getActivityinfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;
    .locals 1

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShortcutInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object p0

    return-object p0
.end method

.method private setSummary(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    sget p0, Lcom/android/systemui/R$string;->lockscreen_none:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    const-string v0, "::"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->getShortcutInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/tuner/ShortcutParser$Shortcut;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/tuner/ShortcutParser$Shortcut;->label:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->getActivityinfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    sget p0, Lcom/android/systemui/R$string;->lockscreen_none:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method private setupGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/SwitchPreference;

    new-instance v1, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Obd464MAoJT5uRv3BJuc47igR_Y;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Obd464MAoJT5uRv3BJuc47igR_Y;-><init>(Lcom/android/systemui/tuner/LockscreenFragment;Landroidx/preference/SwitchPreference;Landroidx/preference/Preference;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDestroy$0$LockscreenFragment(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {p0, p1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public synthetic lambda$setupGroup$1$LockscreenFragment(Landroidx/preference/SwitchPreference;Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-direct {p0, p2, p4}, Lcom/android/systemui/tuner/LockscreenFragment;->setSummary(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mHandler:Landroid/os/Handler;

    sget p1, Lcom/android/systemui/R$xml;->lockscreen_settings:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "sysui_keyguard_left"

    const-string p2, "sysui_keyguard_left_unlock"

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->setupGroup(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sysui_keyguard_right"

    const-string p2, "sysui_keyguard_right_unlock"

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->setupGroup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment;->mTunables:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Lo7jOQgOiEZ4M1LxVUxyoD69g0s;

    invoke-direct {v1, p0}, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$Lo7jOQgOiEZ4M1LxVUxyoD69g0s;-><init>(Lcom/android/systemui/tuner/LockscreenFragment;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
