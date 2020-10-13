.class Lcom/android/systemui/glwallpaper/ImageGLProgram;
.super Ljava/lang/Object;
.source "ImageGLProgram.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageGLProgram"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProgramHandle:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageGLProgram;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getProgramHandle(II)I
    .locals 0

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/glwallpaper/ImageGLProgram;->TAG:Ljava/lang/String;

    const-string p1, "Can not create OpenGL ES program"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return p0
.end method

.method private getShaderHandle(ILjava/lang/String;)I
    .locals 1

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/systemui/glwallpaper/ImageGLProgram;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Create shader failed, type="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p0
.end method

.method private getShaderResource(I)Ljava/lang/String;
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageGLProgram;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/android/systemui/glwallpaper/ImageGLProgram;->TAG:Ljava/lang/String;

    const-string v0, "Can not read the shader source"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method private loadShaderProgram(II)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getShaderResource(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getShaderResource(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getShaderHandle(ILjava/lang/String;)I

    move-result p1

    const v0, 0x8b30

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getShaderHandle(ILjava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->getProgramHandle(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method getAttributeHandle(Ljava/lang/String;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLProgram;->mProgramHandle:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method getUniformHandle(Ljava/lang/String;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLProgram;->mProgramHandle:I

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method useGLProgram(II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->loadShaderProgram(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageGLProgram;->mProgramHandle:I

    iget p0, p0, Lcom/android/systemui/glwallpaper/ImageGLProgram;->mProgramHandle:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 p0, 0x1

    return p0
.end method
