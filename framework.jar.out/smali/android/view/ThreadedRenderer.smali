.class public Landroid/view/ThreadedRenderer;
.super Landroid/view/HardwareRenderer;
.source "ThreadedRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ThreadedRenderer$AtlasInitializer;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ThreadedRenderer"

.field private static final SYNC_INVALIDATE_REQUIRED:I = 0x1

.field private static final SYNC_OK:I

.field private static final VISUALIZERS:[Ljava/lang/String;


# instance fields
.field private final mAmbientShadowAlpha:I

.field private mChoreographer:Landroid/view/Choreographer;

.field private mHasInsets:Z

.field private mHeight:I

.field private mInitialized:Z

.field private mInsetLeft:I

.field private mInsetTop:I

.field private final mLightRadius:F

.field private final mLightY:F

.field private final mLightZ:F

.field private mNativeProxy:J

.field private mProfilingEnabled:Z

.field private mRootNode:Landroid/view/RenderNode;

.field private mRootNodeNeedsUpdate:Z

.field private final mSpotShadowAlpha:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "visual_bars"

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "translucent"    # Z

    .prologue
    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 107
    invoke-direct {p0}, Landroid/view/HardwareRenderer;-><init>()V

    .line 101
    iput-boolean v6, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 108
    const/4 v1, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Lighting:[I

    invoke-virtual {p1, v1, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    .line 110
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    .line 111
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    .line 112
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    .line 114
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    invoke-static {}, Landroid/view/ThreadedRenderer;->nCreateRootRenderNode()J

    move-result-wide v2

    .line 118
    .local v2, "rootNodePtr":J
    invoke-static {v2, v3}, Landroid/view/RenderNode;->adopt(J)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    .line 119
    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v6}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 120
    invoke-static {p2, v2, v3}, Landroid/view/ThreadedRenderer;->nCreateProxy(ZJ)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    .line 122
    sget-object v1, Landroid/view/ThreadedRenderer$AtlasInitializer;->sInstance:Landroid/view/ThreadedRenderer$AtlasInitializer;

    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {v1, p1, v4, v5}, Landroid/view/ThreadedRenderer$AtlasInitializer;->init(Landroid/content/Context;J)V

    .line 125
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 126
    iget-wide v4, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget-object v1, p0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroid/view/ThreadedRenderer;->nSetFrameInterval(JJ)V

    .line 128
    invoke-virtual {p0}, Landroid/view/ThreadedRenderer;->loadSystemProperties()Z

    .line 129
    return-void
.end method

.method static synthetic access$000(JLandroid/view/GraphicBuffer;[J)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Landroid/view/GraphicBuffer;
    .param p3, "x2"    # [J

    .prologue
    .line 67
    invoke-static {p0, p1, p2, p3}, Landroid/view/ThreadedRenderer;->nSetAtlas(JLandroid/view/GraphicBuffer;[J)V

    return-void
.end method

.method static synthetic access$100(JLjava/io/FileDescriptor;I[JI)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/io/FileDescriptor;
    .param p3, "x2"    # I
    .param p4, "x3"    # [J
    .param p5, "x4"    # I

    .prologue
    .line 67
    invoke-static/range {p0 .. p5}, Landroid/view/ThreadedRenderer;->nSetProgramAtlas(JLjava/io/FileDescriptor;I[JI)V

    return-void
.end method

.method private static checkIfProfilingRequested()Z
    .locals 3

    .prologue
    .line 251
    const-string v2, "debug.hwui.profile"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "profiling":Ljava/lang/String;
    sget-object v2, Landroid/view/ThreadedRenderer;->VISUALIZERS:[Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/view/ThreadedRenderer;->search([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 253
    .local v0, "graphType":I
    if-gez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static destroyResources(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 175
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 176
    check-cast v1, Landroid/view/ViewGroup;

    .line 178
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 179
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    .prologue
    .line 347
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->nInvokeFunctor(JZ)V

    .line 348
    return-void
.end method

.method private static native nBuildLayer(JJ)V
.end method

.method private static native nCancelLayerUpdate(JJ)V
.end method

.method private static native nCopyLayerInto(JJJ)Z
.end method

.method private static native nCreateProxy(ZJ)J
.end method

.method private static native nCreateRootRenderNode()J
.end method

.method private static native nCreateTextureLayer(J)J
.end method

.method private static native nDeleteProxy(J)V
.end method

.method private static native nDestroy(J)V
.end method

.method private static native nDestroyHardwareResources(J)V
.end method

.method private static native nDetachSurfaceTexture(JJ)V
.end method

.method private static native nDumpProfileInfo(JLjava/io/FileDescriptor;)V
.end method

.method private static native nFence(J)V
.end method

.method private static native nInitialize(JLandroid/view/Surface;)Z
.end method

.method private static native nInvokeFunctor(JZ)V
.end method

.method private static native nLoadSystemProperties(J)Z
.end method

.method private static native nNotifyFramePending(J)V
.end method

.method private static native nPauseSurface(JLandroid/view/Surface;)V
.end method

.method private static native nPushLayerUpdate(JJ)V
.end method

.method private static native nRegisterAnimatingRenderNode(JJ)V
.end method

.method private static native nSetAtlas(JLandroid/view/GraphicBuffer;[J)V
.end method

.method private static native nSetFrameInterval(JJ)V
.end method

.method private static native nSetOpaque(JZ)V
.end method

.method private static native nSetProgramAtlas(JLjava/io/FileDescriptor;I[JI)V
.end method

.method private static native nSetup(JIIFFFFII)V
.end method

.method private static native nStopDrawing(J)V
.end method

.method private static native nSyncAndDrawFrame(JJJF)I
.end method

.method private static native nTrimMemory(I)V
.end method

.method private static native nUpdateSurface(JLandroid/view/Surface;)V
.end method

.method private static search([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "values"    # [Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 245
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 244
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static native setupShadersDiskCache(Ljava/lang/String;)V
.end method

.method static trimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 412
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->nTrimMemory(I)V

    .line 413
    return-void
.end method

.method private updateEnabledState(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    .prologue
    const-wide/16 v6, 0x8

    .line 277
    const-string v2, "getDisplayList"

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 278
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateViewTreeDisplayList(Landroid/view/View;)V

    .line 280
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    :cond_0
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v4, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/RenderNode;->start(II)Landroid/view/HardwareCanvas;

    move-result-object v0

    .line 283
    .local v0, "canvas":Landroid/view/HardwareCanvas;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->save()I

    move-result v1

    .line 284
    .local v1, "saveCount":I
    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 285
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePreDraw(Landroid/view/HardwareCanvas;)V

    .line 287
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->insertReorderBarrier()V

    .line 288
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/RenderNode;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/HardwareCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    .line 289
    invoke-virtual {v0}, Landroid/view/HardwareCanvas;->insertInorderBarrier()V

    .line 291
    invoke-interface {p2, v0}, Landroid/view/HardwareRenderer$HardwareDrawCallbacks;->onHardwarePostDraw(Landroid/view/HardwareCanvas;)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->restoreToCount(I)V

    .line 293
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v2, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v2, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    .line 298
    .end local v0    # "canvas":Landroid/view/HardwareCanvas;
    .end local v1    # "saveCount":I
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 299
    return-void

    .line 295
    .restart local v0    # "canvas":Landroid/view/HardwareCanvas;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    invoke-virtual {v3, v0}, Landroid/view/RenderNode;->end(Landroid/view/HardwareCanvas;)V

    throw v2
.end method

.method private updateViewTreeDisplayList(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    .line 268
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 269
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 271
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/RenderNode;

    .line 273
    iput-boolean v1, p1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 274
    return-void

    :cond_0
    move v0, v1

    .line 269
    goto :goto_0
.end method


# virtual methods
.method buildLayer(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 358
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/RenderNode;->getNativeDisplayList()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nBuildLayer(JJ)V

    .line 359
    return-void
.end method

.method copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "layer"    # Landroid/view/HardwareLayer;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 363
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    iget-wide v4, p2, Landroid/graphics/Bitmap;->mNativeBitmap:J

    invoke-static/range {v0 .. v5}, Landroid/view/ThreadedRenderer;->nCopyLayerInto(JJJ)Z

    move-result v0

    return v0
.end method

.method createTextureLayer()Landroid/view/HardwareLayer;
    .locals 4

    .prologue
    .line 352
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nCreateTextureLayer(J)J

    move-result-wide v0

    .line 353
    .local v0, "layer":J
    invoke-static {p0, v0, v1}, Landroid/view/HardwareLayer;->adoptTextureLayer(Landroid/view/HardwareRenderer;J)Landroid/view/HardwareLayer;

    move-result-object v2

    return-object v2
.end method

.method destroy()V
    .locals 2

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 135
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroy(J)V

    .line 136
    return-void
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 168
    invoke-static {p1}, Landroid/view/ThreadedRenderer;->destroyResources(Landroid/view/View;)V

    .line 169
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDestroyHardwareResources(J)V

    .line 170
    return-void
.end method

.method detachSurfaceTexture(J)V
    .locals 3
    .param p1, "hardwareLayer"    # J

    .prologue
    .line 192
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/ThreadedRenderer;->nDetachSurfaceTexture(JJ)V

    .line 193
    return-void
.end method

.method draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "callbacks"    # Landroid/view/HardwareRenderer$HardwareDrawCallbacks;

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 309
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    .line 310
    .local v2, "frameTimeNanos":J
    const-wide/32 v0, 0xf4240

    div-long v0, v2, v0

    iput-wide v0, p2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 312
    const-wide/16 v4, 0x0

    .line 313
    .local v4, "recordDuration":J
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 317
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/view/ThreadedRenderer;->updateRootDisplayList(Landroid/view/View;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V

    .line 319
    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eqz v0, :cond_1

    .line 320
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v4, v0, v4

    .line 323
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 327
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 329
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 330
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNode;

    invoke-virtual {p0, v0}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    .line 329
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p2, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 339
    .end local v7    # "count":I
    .end local v8    # "i":I
    :cond_3
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    invoke-static/range {v0 .. v6}, Landroid/view/ThreadedRenderer;->nSyncAndDrawFrame(JJJF)I

    move-result v9

    .line 341
    .local v9, "syncResult":I
    and-int/lit8 v0, v9, 0x1

    if-eqz v0, :cond_4

    .line 342
    iget-object v0, p2, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 344
    :cond_4
    return-void
.end method

.method dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .prologue
    .line 239
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 240
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p2}, Landroid/view/ThreadedRenderer;->nDumpProfileInfo(JLjava/io/FileDescriptor;)V

    .line 241
    return-void
.end method

.method fence()V
    .locals 2

    .prologue
    .line 383
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nFence(J)V

    .line 384
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nDeleteProxy(J)V

    .line 405
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 409
    return-void

    .line 407
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    return v0
.end method

.method initialize(Landroid/view/Surface;)Z
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mInitialized:Z

    .line 149
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 150
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3, p1}, Landroid/view/ThreadedRenderer;->nInitialize(JLandroid/view/Surface;)Z

    move-result v0

    .line 151
    .local v0, "status":Z
    invoke-virtual {p1}, Landroid/view/Surface;->allocateBuffers()V

    .line 152
    return v0
.end method

.method invalidate(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V

    .line 188
    return-void
.end method

.method invalidateRoot()V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mRootNodeNeedsUpdate:Z

    .line 304
    return-void
.end method

.method loadSystemProperties()Z
    .locals 4

    .prologue
    .line 258
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v2, v3}, Landroid/view/ThreadedRenderer;->nLoadSystemProperties(J)Z

    move-result v0

    .line 259
    .local v0, "changed":Z
    invoke-static {}, Landroid/view/ThreadedRenderer;->checkIfProfilingRequested()Z

    move-result v1

    .line 260
    .local v1, "wantProfiling":Z
    iget-boolean v2, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    if-eq v1, v2, :cond_0

    .line 261
    iput-boolean v1, p0, Landroid/view/ThreadedRenderer;->mProfilingEnabled:Z

    .line 262
    const/4 v0, 0x1

    .line 264
    :cond_0
    return v0
.end method

.method public notifyFramePending()V
    .locals 2

    .prologue
    .line 393
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nNotifyFramePending(J)V

    .line 394
    return-void
.end method

.method onLayerDestroyed(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 374
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nCancelLayerUpdate(JJ)V

    .line 375
    return-void
.end method

.method pauseSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 163
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nPauseSurface(JLandroid/view/Surface;)V

    .line 164
    return-void
.end method

.method pushLayerUpdate(Landroid/view/HardwareLayer;)V
    .locals 4
    .param p1, "layer"    # Landroid/view/HardwareLayer;

    .prologue
    .line 369
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-virtual {p1}, Landroid/view/HardwareLayer;->getDeferredLayerUpdater()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nPushLayerUpdate(JJ)V

    .line 370
    return-void
.end method

.method registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 4
    .param p1, "animator"    # Landroid/view/RenderNode;

    .prologue
    .line 398
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/ThreadedRenderer;->nRegisterAnimatingRenderNode(JJ)V

    .line 399
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 379
    return-void
.end method

.method setOpaque(Z)V
    .locals 4
    .param p1, "opaque"    # Z

    .prologue
    .line 224
    iget-wide v2, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/view/ThreadedRenderer;->nSetOpaque(JZ)V

    .line 225
    return-void

    .line 224
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setup(IILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "surfaceInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    .line 197
    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v4, v0, v1

    .line 198
    .local v4, "lightX":F
    iput p1, p0, Landroid/view/ThreadedRenderer;->mWidth:I

    .line 199
    iput p2, p0, Landroid/view/ThreadedRenderer;->mHeight:I

    .line 200
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 202
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 203
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 204
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    add-int/2addr v0, p1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 205
    iget v0, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    add-int/2addr v0, p2

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    .line 208
    invoke-virtual {p0, v2}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 216
    :goto_0
    iget-object v0, p0, Landroid/view/ThreadedRenderer;->mRootNode:Landroid/view/RenderNode;

    iget v1, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    neg-int v1, v1

    iget v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    neg-int v2, v2

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v5, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 217
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    iget v2, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    iget v3, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    iget v5, p0, Landroid/view/ThreadedRenderer;->mLightY:F

    iget v6, p0, Landroid/view/ThreadedRenderer;->mLightZ:F

    iget v7, p0, Landroid/view/ThreadedRenderer;->mLightRadius:F

    iget v8, p0, Landroid/view/ThreadedRenderer;->mAmbientShadowAlpha:I

    iget v9, p0, Landroid/view/ThreadedRenderer;->mSpotShadowAlpha:I

    invoke-static/range {v0 .. v9}, Landroid/view/ThreadedRenderer;->nSetup(JIIFFFFII)V

    .line 220
    return-void

    .line 210
    :cond_0
    iput-boolean v2, p0, Landroid/view/ThreadedRenderer;->mHasInsets:Z

    .line 211
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetLeft:I

    .line 212
    iput v2, p0, Landroid/view/ThreadedRenderer;->mInsetTop:I

    .line 213
    iput p1, p0, Landroid/view/ThreadedRenderer;->mSurfaceWidth:I

    .line 214
    iput p2, p0, Landroid/view/ThreadedRenderer;->mSurfaceHeight:I

    goto :goto_0
.end method

.method stopDrawing()V
    .locals 2

    .prologue
    .line 388
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1}, Landroid/view/ThreadedRenderer;->nStopDrawing(J)V

    .line 389
    return-void
.end method

.method updateSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0, p1}, Landroid/view/ThreadedRenderer;->updateEnabledState(Landroid/view/Surface;)V

    .line 158
    iget-wide v0, p0, Landroid/view/ThreadedRenderer;->mNativeProxy:J

    invoke-static {v0, v1, p1}, Landroid/view/ThreadedRenderer;->nUpdateSurface(JLandroid/view/Surface;)V

    .line 159
    return-void
.end method