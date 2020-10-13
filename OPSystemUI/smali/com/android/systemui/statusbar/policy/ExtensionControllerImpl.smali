.class public Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;
.super Ljava/lang/Object;
.source "ExtensionControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;,
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;,
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;,
        Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Producer;
    }
.end annotation


# instance fields
.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mDefaultContext:Landroid/content/Context;

.field private final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mDefaultContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mDefaultContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)Lcom/android/systemui/util/leak/LeakDetector;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)Lcom/android/systemui/shared/plugins/PluginManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)Lcom/android/systemui/tuner/TunerService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionController$ExtensionBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    move-result-object p0

    return-object p0
.end method

.method public newExtension(Ljava/lang/Class;)Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$1;)V

    return-object p1
.end method
