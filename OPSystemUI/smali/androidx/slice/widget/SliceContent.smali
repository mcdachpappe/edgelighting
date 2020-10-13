.class public Landroidx/slice/widget/SliceContent;
.super Ljava/lang/Object;
.source "SliceContent.java"


# instance fields
.field protected mColorItem:Landroidx/slice/SliceItem;

.field protected mContentDescr:Landroidx/slice/SliceItem;

.field protected mLayoutDirItem:Landroidx/slice/SliceItem;

.field protected mRowIndex:I

.field protected mSliceItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/slice/SliceItem;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroidx/slice/Slice;->getHints()Ljava/util/List;

    move-result-object v2

    const-string v3, "slice"

    invoke-direct {v0, p1, v3, v1, v2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceContent;->init(Landroidx/slice/SliceItem;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/slice/widget/SliceContent;->mRowIndex:I

    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceContent;->init(Landroidx/slice/SliceItem;)V

    iput p2, p0, Landroidx/slice/widget/SliceContent;->mRowIndex:I

    return-void
.end method

.method private fallBackToAppData(Landroid/content/Context;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;ILandroidx/slice/SliceItem;)Landroidx/slice/core/SliceAction;
    .locals 9

    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const/4 v0, 0x0

    const-string v1, "slice"

    invoke-static {p0, v1, v0, v0}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_1

    :cond_2
    move-object p2, v0

    :goto_1
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    :cond_3
    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_6

    if-nez p3, :cond_4

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3}, Landroidx/slice/widget/SliceViewUtil;->createIconFromDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p3

    const/4 p4, 0x2

    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    :cond_5
    if-nez p5, :cond_6

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance p5, Landroidx/slice/SliceItem;

    invoke-static {p1, v1, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-direct {v2, p0}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v5

    const/4 v7, 0x0

    new-array v8, v1, [Ljava/lang/String;

    const-string v6, "action"

    move-object v3, p5

    invoke-direct/range {v3 .. v8}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_6
    if-nez p5, :cond_7

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v1, p0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance p0, Landroidx/slice/SliceItem;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v5, "action"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroidx/slice/SliceItem;-><init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object p0, p5

    :goto_3
    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    if-eqz p0, :cond_8

    new-instance p1, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {p1, p0, p3, p4, p2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    return-object p1

    :cond_8
    return-object v0
.end method

.method private init(Landroidx/slice/SliceItem;)V
    .locals 4

    iput-object p1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "slice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v1, "int"

    const/4 v2, 0x0

    const-string v3, "color"

    invoke-static {v0, v1, v3, v2, v2}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceContent;->mColorItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    const-string v3, "layout_direction"

    invoke-static {v0, v1, v3, v2, v2}, Landroidx/slice/core/SliceQuery;->findTopLevelItem(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/SliceContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    :cond_1
    const-string v0, "text"

    const-string v1, "content_description"

    invoke-static {p1, v0, v1}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mContentDescr:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLayoutDir()I
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mLayoutDirItem:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    invoke-static {p0}, Landroidx/slice/widget/SliceViewUtil;->resolveLayoutDirection(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getRowIndex()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceContent;->mRowIndex:I

    return p0
.end method

.method public getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;
    .locals 10

    iget-object v1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v3, 0x3

    const-string v4, "title"

    const-string v5, "shortcut"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-static {v1, v6, v5, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    const-string v5, "text"

    const-string v7, "image"

    if-eqz v1, :cond_1

    invoke-static {v1, v7, v4, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    invoke-static {v1, v5, v2, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v9

    goto :goto_0

    :cond_1
    move-object v8, v2

    move-object v9, v8

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v1, v6, v2, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    :cond_2
    move-object v6, v1

    if-nez v8, :cond_3

    iget-object v1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v1, v7, v4, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v8

    :cond_3
    if-nez v9, :cond_4

    iget-object v1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v1, v5, v4, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v9

    :cond_4
    if-nez v8, :cond_5

    iget-object v1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v1, v7, v2, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    move-object v8, v1

    :cond_5
    if-nez v9, :cond_6

    iget-object v1, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    invoke-static {v1, v5, v2, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    move-object v9, v1

    :cond_6
    if-eqz v8, :cond_9

    const-string v1, "no_tint"

    invoke-virtual {v8, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "large"

    invoke-virtual {v8, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_9
    move v4, v3

    :goto_2
    if-eqz p1, :cond_a

    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move-object v3, v8

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/SliceContent;->fallBackToAppData(Landroid/content/Context;Landroidx/slice/SliceItem;Landroidx/slice/SliceItem;ILandroidx/slice/SliceItem;)Landroidx/slice/core/SliceAction;

    move-result-object v0

    return-object v0

    :cond_a
    if-eqz v8, :cond_b

    if-eqz v6, :cond_b

    if-eqz v9, :cond_b

    new-instance v0, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v8}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V

    return-object v0

    :cond_b
    return-object v2
.end method

.method public getSliceItem()Landroidx/slice/SliceItem;
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
