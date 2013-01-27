.class public final Landroid/view/ViewRootImpl;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionController;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$InputMethodCallback;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InputEventMessage;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ResizedInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FOCUS:I = 0x3f5

.field public static final CLOSE_SYSTEM_DIALOGS:I = 0x3f6

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field public static final DIE:I = 0x3e9

.field public static final DISPATCH_APP_VISIBILITY:I = 0x3f0

.field public static final DISPATCH_DRAG_EVENT:I = 0x3f7

.field public static final DISPATCH_DRAG_LOCATION_EVENT:I = 0x3f8

.field public static final DISPATCH_GENERIC_MOTION:I = 0x3fa

.field public static final DISPATCH_GET_NEW_SURFACE:I = 0x3f1

.field public static final DISPATCH_KEY:I = 0x3ed

.field public static final DISPATCH_KEY_FROM_IME:I = 0x3f3

.field public static final DISPATCH_POINTER:I = 0x3ee

.field public static final DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x3f9

.field public static final DISPATCH_TRACKBALL:I = 0x3ef

.field public static final DO_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x3fd

.field public static final DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_ID:I = 0x3fe

.field public static final DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_TEXT:I = 0x3ff

.field public static final DO_PERFORM_ACCESSIBILITY_ACTION:I = 0x3fc

.field public static final DO_TRAVERSAL:I = 0x3e8

.field public static final FINISHED_EVENT:I = 0x3f2

.field public static final FINISH_INPUT_CONNECTION:I = 0x3f4

.field private static final LOCAL_LOGV:Z = false

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MEASURE_LATENCY:Z = false

.field public static final PROCESS_INPUT_EVENTS:I = 0x400

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewancestor.profile_rendering"

.field public static final RESIZED:I = 0x3ea

.field public static final RESIZED_REPORT:I = 0x3eb

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field public static final UPDATE_CONFIGURATION:I = 0x3fb

.field private static final WATCH_POINTER:Z = false

.field public static final WINDOW_FOCUS_CHANGED:I = 0x3ec

.field private static lt:Landroid/os/LatencyTimer;

.field static mInitialized:Z

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field static final mStaticInit:Ljava/lang/Object;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAddNesting:I

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field mCurScrollY:I

.field final mCurrentDirty:Landroid/graphics/Rect;

.field mCurrentDragView:Landroid/view/View;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field private mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

.field mFirst:Z

.field mFocusedView:Landroid/view/View;

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInputEventDeliverPostImeTimeNanos:J

.field private mInputEventDeliverTimeNanos:J

.field private mInputEventReceiveTimeNanos:J

.field private final mInputHandler:Landroid/view/InputHandler;

.field final mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mIsAnimating:Z

.field mIsCreating:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field mLastDrawDurationNanos:J

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastJoystickXDirection:I

.field mLastJoystickXKeyCode:I

.field mLastJoystickYDirection:I

.field mLastJoystickYKeyCode:I

.field mLastScrolledFocus:Landroid/view/View;

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTrackballTime:J

.field mLastTraversalFinishedTimeNanos:J

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mNewSurfaceNeeded:Z

.field mOrigWindowType:I

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingEventSeq:I

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousDirty:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field private mProfile:Z

.field private mProfileRendering:Z

.field mRealFocusedView:Landroid/view/View;

.field private mRenderProfiler:Ljava/lang/Thread;

.field private volatile mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field mResizeAlpha:I

.field mResizeBuffer:Landroid/view/HardwareLayer;

.field mResizeBufferDuration:I

.field mResizeBufferStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field private mSkipResizedMsg:Z
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_FIELD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation
.end field

.field mSoftInputMode:I

.field mStopped:Z

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field final mTargetSdkVersion:I

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field final mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

.field final mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalScheduled:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mStaticInit:Ljava/lang/Object;

    .line 134
    sput-boolean v1, Landroid/view/ViewRootImpl;->mInitialized:Z

    .line 136
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 139
    sput-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 265
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 334
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 144
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 145
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 146
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 153
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 155
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    .line 159
    iput v4, p0, Landroid/view/ViewRootImpl;->mPendingEventSeq:I

    .line 165
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 177
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 178
    iput v5, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 182
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 184
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 197
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    .line 198
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    .line 223
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 225
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 226
    iput v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 230
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 242
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 244
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 247
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 248
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 274
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 275
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 282
    iput-wide v7, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 283
    iput-wide v7, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 286
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mSkipResizedMsg:Z

    .line 307
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 392
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1740
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    .line 3810
    new-instance v0, Landroid/view/ViewRootImpl$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputHandler:Landroid/view/InputHandler;

    .line 4439
    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    .line 347
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 348
    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 349
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 350
    iput v5, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 351
    iput v5, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 353
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 354
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 356
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 358
    new-instance v0, Landroid/view/ViewRootImpl$InputMethodCallback;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputMethodCallback;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

    .line 359
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 360
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 361
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 362
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 363
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 364
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 365
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 367
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 369
    new-instance v0, Landroid/view/View$AttachInfo;

    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, v1, v2, p0, p0}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 370
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 372
    invoke-static {p1}, Lcom/android/internal/policy/PolicyManager;->makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 373
    const-string/jumbo v0, "viewancestor.profile_rendering"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    .line 375
    return-void

    :cond_0
    move-object v0, v1

    .line 307
    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/ViewRootImpl;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 386
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 387
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    monitor-exit v1

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 378
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 379
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v0, :cond_0

    .line 380
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_0
    monitor-exit v1

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 3228
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v2, :cond_1

    .line 3260
    :cond_0
    :goto_0
    return v1

    .line 3233
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3234
    .local v0, action:I
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 3239
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 3248
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3249
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_0

    .line 3255
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3256
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    goto :goto_0
.end method

.method private deliverGenericMotionEvent(Landroid/view/MotionEvent;Z)V
    .locals 5
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3088
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_0

    .line 3089
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 3092
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 3093
    .local v1, source:I
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_3

    move v0, v2

    .line 3096
    .local v0, isJoystick:Z
    :goto_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_4

    .line 3097
    :cond_1
    if-eqz v0, :cond_2

    .line 3098
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3100
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 3120
    :goto_1
    return-void

    .end local v0           #isJoystick:Z
    :cond_3
    move v0, v3

    .line 3093
    goto :goto_0

    .line 3105
    .restart local v0       #isJoystick:Z
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3106
    if-eqz v0, :cond_5

    .line 3107
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3109
    :cond_5
    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1

    .line 3113
    :cond_6
    if-eqz v0, :cond_7

    .line 3115
    invoke-direct {p0, p1, v2}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3116
    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1

    .line 3118
    :cond_7
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1
.end method

.method private deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v3, 0x0

    .line 3285
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_0

    .line 3286
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 3290
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v2, :cond_2

    .line 3291
    :cond_1
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3318
    :goto_0
    return-void

    .line 3298
    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3299
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3305
    :cond_3
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_4

    .line 3306
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3307
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_4

    .line 3308
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->enqueuePendingEvent(Ljava/lang/Object;Z)I

    move-result v1

    .line 3311
    .local v1, seq:I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    goto :goto_0

    .line 3317
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #seq:I
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V
    .locals 7
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3340
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_1

    .line 3341
    :cond_0
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3445
    :goto_0
    return-void

    .line 3346
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3347
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3353
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, p1}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 3356
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3357
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3362
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3366
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3367
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3373
    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, p1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3374
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3379
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b

    .line 3380
    const/4 v0, 0x0

    .line 3381
    .local v0, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 3411
    :cond_6
    :goto_1
    if-eqz v0, :cond_b

    .line 3412
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3413
    .local v1, focused:Landroid/view/View;
    :goto_2
    if-eqz v1, :cond_b

    .line 3414
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 3415
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_a

    if-eq v2, v1, :cond_a

    .line 3419
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3420
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    .line 3421
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3423
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3426
    :cond_7
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3427
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 3429
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_0

    .line 3383
    .end local v1           #focused:Landroid/view/View;
    .end local v2           #v:Landroid/view/View;
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3384
    const/16 v0, 0x11

    goto :goto_1

    .line 3388
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3389
    const/16 v0, 0x42

    goto :goto_1

    .line 3393
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3394
    const/16 v0, 0x21

    goto :goto_1

    .line 3398
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3399
    const/16 v0, 0x82

    goto :goto_1

    .line 3403
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3404
    const/4 v0, 0x2

    goto :goto_1

    .line 3405
    :cond_8
    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3406
    const/4 v0, 0x1

    goto :goto_1

    .line 3412
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 3435
    .restart local v1       #focused:Landroid/view/View;
    .restart local v2       #v:Landroid/view/View;
    :cond_a
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3436
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_0

    .line 3444
    .end local v0           #direction:I
    .end local v1           #focused:Landroid/view/View;
    .end local v2           #v:Landroid/view/View;
    :cond_b
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_0

    .line 3381
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private deliverPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 7
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    .line 2879
    .local v2, isTouchEvent:Z
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_0

    .line 2880
    if-eqz v2, :cond_2

    .line 2881
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v5}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 2888
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_3

    .line 2889
    :cond_1
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 2930
    :goto_1
    return-void

    .line 2883
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v5}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 2894
    :cond_3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_4

    .line 2895
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 2899
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2900
    .local v0, action:I
    if-eqz v0, :cond_5

    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    .line 2901
    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 2905
    :cond_6
    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v3, :cond_7

    .line 2906
    const/4 v3, 0x0

    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2913
    :cond_7
    if-eqz v2, :cond_8

    .line 2914
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 2915
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 2919
    :cond_8
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2923
    .local v1, handled:Z
    if-eqz v1, :cond_9

    .line 2924
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1

    .line 2929
    :cond_9
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1
.end method

.method private deliverTrackballEvent(Landroid/view/MotionEvent;Z)V
    .locals 33
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 2952
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_0

    .line 2953
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 2957
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_2

    .line 2958
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 3081
    :goto_0
    return-void

    .line 2963
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2968
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 2970
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 2971
    const-wide/32 v6, -0x80000000

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    goto :goto_0

    .line 2976
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

    move-object/from16 v29, v0

    .line 2977
    .local v29, x:Landroid/view/ViewRootImpl$TrackballAxis;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

    move-object/from16 v31, v0

    .line 2979
    .local v31, y:Landroid/view/ViewRootImpl$TrackballAxis;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2980
    .local v4, curTime:J
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    const-wide/16 v12, 0xfa

    add-long/2addr v6, v12

    cmp-long v3, v6, v4

    if-gez v3, :cond_4

    .line 2983
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2984
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2985
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 2988
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    .line 2989
    .local v27, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 2990
    .local v11, metaState:I
    packed-switch v27, :pswitch_data_0

    .line 3015
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const-string v8, "X"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v30

    .line 3016
    .local v30, xOff:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const-string v8, "Y"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v32

    .line 3024
    .local v32, yOff:F
    const/4 v9, 0x0

    .line 3025
    .local v9, keycode:I
    const/16 v28, 0x0

    .line 3026
    .local v28, movement:I
    const/high16 v25, 0x3f80

    .line 3027
    .local v25, accel:F
    cmpl-float v3, v30, v32

    if-lez v3, :cond_9

    .line 3028
    const/high16 v3, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v6

    div-float/2addr v3, v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate(F)I

    move-result v28

    .line 3029
    if-eqz v28, :cond_5

    .line 3030
    if-lez v28, :cond_8

    const/16 v9, 0x16

    .line 3032
    :goto_2
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v25, v0

    .line 3033
    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3045
    :cond_5
    :goto_3
    if-eqz v9, :cond_c

    .line 3046
    if-gez v28, :cond_6

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 3047
    :cond_6
    move/from16 v0, v28

    int-to-float v3, v0

    mul-float v3, v3, v25

    float-to-int v0, v3

    move/from16 v26, v0

    .line 3051
    .local v26, accelMovement:I
    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_7

    .line 3054
    add-int/lit8 v28, v28, -0x1

    .line 3055
    sub-int v10, v26, v28

    .line 3056
    .local v10, repeatCount:I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x2

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3061
    .end local v10           #repeatCount:I
    :cond_7
    :goto_4
    if-lez v28, :cond_b

    .line 3064
    add-int/lit8 v28, v28, -0x1

    .line 3065
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3066
    new-instance v12, Landroid/view/KeyEvent;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x400

    const/16 v24, 0x101

    move-wide v13, v4

    move-wide v15, v4

    move/from16 v18, v9

    move/from16 v20, v11

    invoke-direct/range {v12 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3070
    new-instance v12, Landroid/view/KeyEvent;

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x400

    const/16 v24, 0x101

    move-wide v13, v4

    move-wide v15, v4

    move/from16 v18, v9

    move/from16 v20, v11

    invoke-direct/range {v12 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_4

    .line 2992
    .end local v9           #keycode:I
    .end local v25           #accel:F
    .end local v26           #accelMovement:I
    .end local v28           #movement:I
    .end local v30           #xOff:F
    .end local v32           #yOff:F
    :pswitch_0
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2993
    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 2994
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .line 3000
    :pswitch_1
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3001
    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3002
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .line 3030
    .restart local v9       #keycode:I
    .restart local v25       #accel:F
    .restart local v28       #movement:I
    .restart local v30       #xOff:F
    .restart local v32       #yOff:F
    :cond_8
    const/16 v9, 0x15

    goto/16 :goto_2

    .line 3035
    :cond_9
    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-lez v3, :cond_5

    .line 3036
    const/high16 v3, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v6

    div-float/2addr v3, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate(F)I

    move-result v28

    .line 3037
    if-eqz v28, :cond_5

    .line 3038
    if-lez v28, :cond_a

    const/16 v9, 0x14

    .line 3040
    :goto_5
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v25, v0

    .line 3041
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto/16 :goto_3

    .line 3038
    :cond_a
    const/16 v9, 0x13

    goto :goto_5

    .line 3075
    .restart local v26       #accelMovement:I
    :cond_b
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 3080
    .end local v26           #accelMovement:I
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_0

    .line 2990
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private destroyHardwareRenderer()V
    .locals 2

    .prologue
    .line 3768
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 3769
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 3770
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 3771
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 3773
    :cond_0
    return-void
.end method

.method private dispatchGenericMotion(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3947
    const/16 v1, 0x3fa

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3948
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3949
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3950
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 3951
    return-void

    .line 3949
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchKey(Landroid/view/KeyEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3911
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3912
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3913
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3918
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 3919
    return-void

    .line 3913
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchMotion(Landroid/view/MotionEvent;Z)V
    .locals 2
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3922
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 3923
    .local v0, source:I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 3924
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchPointer(Landroid/view/MotionEvent;Z)V

    .line 3930
    :goto_0
    return-void

    .line 3925
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 3926
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchTrackball(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 3928
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchGenericMotion(Landroid/view/MotionEvent;Z)V

    goto :goto_0
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3933
    const/16 v1, 0x3ee

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3934
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3935
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3936
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 3937
    return-void

    .line 3935
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchTrackball(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3940
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3941
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3942
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3943
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 3944
    return-void

    .line 3942
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private draw(Z)V
    .locals 30
    .parameter "fullRedrawNeeded"

    .prologue
    .line 1828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v22, v0

    .line 1829
    .local v22, surface:Landroid/view/Surface;
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Landroid/view/Surface;->isValid()Z

    move-result v25

    if-nez v25, :cond_1

    .line 2061
    :cond_0
    :goto_0
    return-void

    .line 1837
    :cond_1
    sget-boolean v25, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v25, :cond_3

    .line 1838
    sget-object v26, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v26

    .line 1839
    const/16 v25, 0x1

    :try_start_0
    sput-boolean v25, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 1840
    sget-object v25, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1841
    .local v9, count:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v9, :cond_2

    .line 1842
    sget-object v25, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->post(Ljava/lang/Runnable;)Z

    .line 1841
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1844
    :cond_2
    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1847
    .end local v9           #count:I
    .end local v15           #i:I
    :cond_3
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 1855
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v25

    if-eqz v25, :cond_8

    const/4 v5, 0x1

    .line 1856
    .local v5, animating:Z
    :goto_2
    if-eqz v5, :cond_9

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getCurrY()I

    move-result v24

    .line 1861
    .local v24, yoff:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 1862
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 1863
    const/16 p1, 0x1

    .line 1865
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v6, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1866
    .local v6, appScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v19, v0

    .line 1868
    .local v19, scalingRequired:Z
    const/16 v17, 0x0

    .line 1869
    .local v17, resizeAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 1870
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    move-wide/from16 v27, v0

    sub-long v11, v25, v27

    .line 1871
    .local v11, deltaTime:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    cmp-long v25, v11, v25

    if-gez v25, :cond_a

    .line 1872
    long-to-float v0, v11

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v4, v25, v26

    .line 1873
    .local v4, amt:F
    sget-object v25, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1874
    const/4 v5, 0x1

    .line 1875
    const/high16 v25, 0x437f

    mul-float v25, v25, v4

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    rsub-int v0, v0, 0xff

    move/from16 v17, v0

    .line 1881
    .end local v4           #amt:F
    .end local v11           #deltaTime:J
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 1882
    .local v13, dirty:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 1884
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 1885
    if-eqz v5, :cond_0

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1889
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto/16 :goto_0

    .line 1844
    .end local v5           #animating:Z
    .end local v6           #appScale:F
    .end local v13           #dirty:Landroid/graphics/Rect;
    .end local v17           #resizeAlpha:I
    .end local v19           #scalingRequired:Z
    .end local v24           #yoff:I
    :catchall_0
    move-exception v25

    :try_start_1
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v25

    .line 1855
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1859
    .restart local v5       #animating:Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v24, v0

    .restart local v24       #yoff:I
    goto/16 :goto_3

    .line 1877
    .restart local v6       #appScale:F
    .restart local v11       #deltaTime:J
    .restart local v17       #resizeAlpha:I
    .restart local v19       #scalingRequired:Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto :goto_4

    .line 1894
    .end local v11           #deltaTime:J
    .restart local v13       #dirty:Landroid/graphics/Rect;
    :cond_b
    if-eqz p1, :cond_c

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1896
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v6

    const/high16 v28, 0x3f00

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v6

    const/high16 v29, 0x3f00

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1899
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 1900
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 1901
    :cond_d
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 1902
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 1903
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1908
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 1910
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    .line 1911
    .local v10, currentDirty:Landroid/graphics/Rect;
    if-eqz v5, :cond_e

    .line 1912
    const/4 v10, 0x0

    .line 1915
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->set(IIII)V

    .line 1920
    .end local v10           #currentDirty:Landroid/graphics/Rect;
    :cond_f
    if-eqz v5, :cond_0

    .line 1921
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1922
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 1937
    :cond_10
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_19

    .line 1940
    :cond_11
    :try_start_2
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 1941
    .local v16, left:I
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 1942
    .local v23, top:I
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .line 1943
    .local v18, right:I
    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    .line 1950
    .local v7, bottom:I
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v8

    .line 1959
    .local v8, canvas:Landroid/graphics/Canvas;
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v7, v0, :cond_13

    .line 1961
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1965
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mDensity:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1987
    :try_start_3
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 1988
    :cond_14
    const-wide/16 v20, 0x0

    .line 2008
    .local v20, startTime:J
    invoke-virtual {v8}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v25

    if-eqz v25, :cond_15

    if-eqz v24, :cond_16

    .line 2009
    :cond_15
    const/16 v25, 0x0

    sget-object v26, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2012
    :cond_16
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 2013
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 2015
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v26, v0

    or-int/lit8 v26, v26, 0x20

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2024
    const/16 v25, 0x0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    :try_start_4
    move/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v25, v0

    if-eqz v25, :cond_17

    .line 2026
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 2028
    :cond_17
    if-eqz v19, :cond_1b

    sget v25, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_5
    move/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2033
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    move/from16 v25, v0

    if-nez v25, :cond_18

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2049
    .end local v20           #startTime:J
    :cond_18
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 2057
    .end local v7           #bottom:I
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v16           #left:I
    .end local v18           #right:I
    .end local v23           #top:I
    :cond_19
    if-eqz v5, :cond_0

    .line 2058
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2059
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 1966
    :catch_0
    move-exception v14

    .line 1967
    .local v14, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v25, "ViewRootImpl"

    const-string v26, "OutOfResourcesException locking surface"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1969
    :try_start_6
    sget-object v25, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v25

    if-nez v25, :cond_1a

    .line 1970
    const-string v25, "ViewRootImpl"

    const-string v26, "No processes killed for memory; killing self"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/os/Process;->killProcess(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1975
    :cond_1a
    :goto_6
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .line 1977
    .end local v14           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v14

    .line 1978
    .local v14, e:Ljava/lang/IllegalArgumentException;
    const-string v25, "ViewRootImpl"

    const-string v26, "IllegalArgumentException locking surface"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1982
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .line 2028
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #bottom:I
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    .restart local v16       #left:I
    .restart local v18       #right:I
    .restart local v20       #startTime:J
    .restart local v23       #top:I
    :cond_1b
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 2033
    :catchall_1
    move-exception v25

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    move/from16 v26, v0

    if-nez v26, :cond_1c

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_1c
    throw v25
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2049
    .end local v20           #startTime:J
    :catchall_2
    move-exception v25

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v25

    .line 1973
    .end local v7           #bottom:I
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v16           #left:I
    .end local v18           #right:I
    .end local v23           #top:I
    .local v14, e:Landroid/view/Surface$OutOfResourcesException;
    :catch_2
    move-exception v25

    goto :goto_6
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 9
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 606
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 607
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 610
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v6, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x100

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    move v2, v4

    .line 616
    .local v2, hardwareAccelerated:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 617
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 630
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_4

    move v0, v4

    .line 632
    .local v0, fakeHwAccelerated:Z
    :goto_2
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    move v1, v4

    .line 635
    .local v1, forceHwAccelerated:Z
    :goto_3
    sget-boolean v6, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v6, :cond_2

    sget-boolean v6, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-eqz v6, :cond_a

    if-eqz v1, :cond_a

    .line 638
    :cond_2
    sget-boolean v6, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-nez v6, :cond_6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    if-eq v6, v7, :cond_6

    .line 640
    const-string v4, "HardwareRenderer"

    const-string v5, "Attempting to initialize hardware acceleration outside of the main thread, aborting"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #fakeHwAccelerated:Z
    .end local v1           #forceHwAccelerated:Z
    .end local v2           #hardwareAccelerated:Z
    :cond_3
    move v2, v5

    .line 613
    goto :goto_1

    .restart local v2       #hardwareAccelerated:Z
    :cond_4
    move v0, v5

    .line 630
    goto :goto_2

    .restart local v0       #fakeHwAccelerated:Z
    :cond_5
    move v1, v5

    .line 632
    goto :goto_3

    .line 645
    .restart local v1       #forceHwAccelerated:Z
    :cond_6
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    move v3, v4

    .line 646
    .local v3, translucent:Z
    :goto_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_7

    .line 647
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6, v4}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 649
    :cond_7
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v7, 0x2

    invoke-static {v7, v3}, Landroid/view/HardwareRenderer;->createGlRenderer(IZ)Landroid/view/HardwareRenderer;

    move-result-object v7

    iput-object v7, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 650
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_9

    :goto_5
    iput-boolean v4, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v4, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto :goto_0

    .end local v3           #translucent:Z
    :cond_8
    move v3, v5

    .line 645
    goto :goto_4

    .restart local v3       #translucent:Z
    :cond_9
    move v4, v5

    .line 650
    goto :goto_5

    .line 652
    .end local v3           #translucent:Z
    :cond_a
    if-eqz v0, :cond_0

    .line 658
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto :goto_0
.end method

.method private enqueueInputEvent(Landroid/os/Message;J)V
    .locals 3
    .parameter "msg"
    .parameter "when"

    .prologue
    .line 3881
    invoke-static {p1}, Landroid/view/ViewRootImpl$InputEventMessage;->obtain(Landroid/os/Message;)Landroid/view/ViewRootImpl$InputEventMessage;

    move-result-object v1

    .line 3882
    .local v1, inputMessage:Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    if-nez v2, :cond_0

    .line 3883
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3891
    :goto_0
    const/16 v2, 0x400

    invoke-virtual {p0, v2, p2, p3}, Landroid/view/ViewRootImpl;->sendEmptyMessageAtTime(IJ)Z

    .line 3892
    return-void

    .line 3885
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 3886
    .local v0, currMessage:Landroid/view/ViewRootImpl$InputEventMessage;
    :goto_1
    iget-object v2, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v2, :cond_1

    .line 3887
    iget-object v0, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    goto :goto_1

    .line 3889
    :cond_1
    iput-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    goto :goto_0
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .parameter "inTouchMode"

    .prologue
    .line 2787
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 2792
    :goto_0
    return v0

    .line 2789
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 2790
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 2792
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method private enterTouchMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2796
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2797
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2801
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 2802
    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2804
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2806
    .local v0, ancestorToTakeFocus:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2809
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 2820
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :goto_0
    return v2

    .line 2812
    .restart local v0       #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .restart local v1       #focused:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->unFocus()V

    .line 2813
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2814
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2815
    const/4 v2, 0x1

    goto :goto_0

    .line 2820
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v2, 0x0

    .line 2831
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2832
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 2833
    check-cast v1, Landroid/view/ViewGroup;

    .line 2834
    .local v1, vgParent:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2844
    .end local v1           #vgParent:Landroid/view/ViewGroup;
    :goto_1
    return-object v1

    .line 2838
    .restart local v1       #vgParent:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 2839
    goto :goto_1

    .line 2841
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2843
    goto :goto_0

    .end local v1           #vgParent:Landroid/view/ViewGroup;
    :cond_2
    move-object v1, v2

    .line 2844
    goto :goto_1
.end method

.method private finishInputEvent(Landroid/view/InputEvent;Z)V
    .locals 2
    .parameter "event"
    .parameter "handled"

    .prologue
    .line 2706
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    if-nez v0, :cond_0

    .line 2707
    const-string v0, "ViewRootImpl"

    const-string v1, "Attempted to tell the input queue that the current input event is finished but there is no input event actually in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    :goto_0
    return-void

    .line 2748
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    invoke-virtual {v0, p2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 2749
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    goto :goto_0
.end method

.method private finishKeyEvent(Landroid/view/KeyEvent;ZZ)V
    .locals 0
    .parameter "event"
    .parameter "sendDone"
    .parameter "handled"

    .prologue
    .line 3448
    if-eqz p2, :cond_0

    .line 3449
    invoke-direct {p0, p1, p3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 3451
    :cond_0
    return-void
.end method

.method private finishMotionEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 0
    .parameter "event"
    .parameter "sendDone"
    .parameter "handled"

    .prologue
    .line 2933
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 2934
    if-eqz p2, :cond_0

    .line 2935
    invoke-direct {p0, p1, p3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 2943
    :cond_0
    return-void
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 2331
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 2332
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 2333
    check-cast v1, Landroid/view/ViewGroup;

    .line 2334
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2335
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2336
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2335
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2339
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 3572
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3573
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3575
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 3576
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 3578
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .parameter "view"
    .parameter "info"

    .prologue
    .line 3706
    iget-object v1, p1, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 3707
    .local v1, displayList:Landroid/view/DisplayList;
    const/4 v4, 0x0

    aget v5, p2, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p2, v4

    .line 3708
    if-eqz v1, :cond_0

    .line 3709
    const/4 v4, 0x1

    aget v5, p2, v4

    invoke-virtual {v1}, Landroid/view/DisplayList;->getSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p2, v4

    .line 3712
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 3713
    check-cast v2, Landroid/view/ViewGroup;

    .line 3715
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3716
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3717
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 3716
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3720
    .end local v0           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_1
    return-void
.end method

.method private getRootMeasureSpec(II)I
    .locals 2
    .parameter "windowSize"
    .parameter "rootDimension"

    .prologue
    const/high16 v1, 0x4000

    .line 1720
    packed-switch p2, :pswitch_data_0

    .line 1732
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1735
    .local v0, measureSpec:I
    :goto_0
    return v0

    .line 1724
    .end local v0           #measureSpec:I
    :pswitch_0
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1725
    .restart local v0       #measureSpec:I
    goto :goto_0

    .line 1728
    .end local v0           #measureSpec:I
    :pswitch_1
    const/high16 v1, -0x8000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1729
    .restart local v0       #measureSpec:I
    goto :goto_0

    .line 1720
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .locals 2

    .prologue
    .line 4489
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$RunQueue;

    .line 4490
    .local v0, rq:Landroid/view/ViewRootImpl$RunQueue;
    if-eqz v0, :cond_0

    .line 4495
    :goto_0
    return-object v0

    .line 4493
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue;

    .end local v0           #rq:Landroid/view/ViewRootImpl$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    .line 4494
    .restart local v0       #rq:Landroid/view/ViewRootImpl$RunQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;
    .locals 5
    .parameter "mainLooper"

    .prologue
    .line 312
    sget-object v2, Landroid/view/ViewRootImpl;->mStaticInit:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 315
    :try_start_1
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 316
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v1

    sput-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    .line 318
    const/4 v1, 0x1

    sput-boolean v1, Landroid/view/ViewRootImpl;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v2

    return-object v1

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 319
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 3462
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_0

    .line 3463
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    .line 3465
    .local v3, what:I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 3470
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 3534
    .end local v3           #what:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 3535
    return-void

    .line 3474
    .restart local v3       #what:I
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 3475
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3476
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 3482
    :goto_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v8, :cond_5

    .line 3483
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 3484
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3

    .line 3485
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 3488
    :cond_3
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v4, :cond_4

    .line 3489
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 3492
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 3493
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/view/DragEvent;->mY:F

    .line 3497
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3500
    .local v1, prevDragView:Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 3503
    .local v2, result:Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v1, v4, :cond_7

    .line 3505
    if-eqz v1, :cond_6

    .line 3506
    :try_start_0
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 3508
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 3509
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3517
    :cond_7
    :goto_2
    if-ne v3, v8, :cond_8

    .line 3518
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 3520
    :try_start_1
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting drop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3529
    :cond_8
    :goto_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3530
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3478
    .end local v1           #prevDragView:Landroid/view/View;
    .end local v2           #result:Z
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_1

    .line 3511
    .restart local v1       #prevDragView:Landroid/view/View;
    .restart local v2       #result:Z
    :catch_0
    move-exception v0

    .line 3512
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to note drag target change"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3522
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3523
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to report drop result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleFinishedEvent(IZ)V
    .locals 3
    .parameter "seq"
    .parameter "handled"

    .prologue
    const/4 v2, 0x1

    .line 3321
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->retrievePendingEvent(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 3324
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    .line 3325
    if-ltz p1, :cond_1

    move v1, v2

    .line 3326
    .local v1, sendDone:Z
    :goto_0
    if-eqz p2, :cond_2

    .line 3327
    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3332
    .end local v1           #sendDone:Z
    :cond_0
    :goto_1
    return-void

    .line 3325
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3329
    .restart local v1       #sendDone:Z
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto :goto_1
.end method

.method static isInTouchMode()Z
    .locals 1

    .prologue
    .line 411
    sget-boolean v0, Landroid/view/ViewRootImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 413
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 417
    :goto_0
    return v0

    .line 414
    :catch_0
    move-exception v0

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 3193
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3208
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3206
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3193
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 3217
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 2322
    if-ne p0, p1, :cond_1

    .line 2327
    :cond_0
    :goto_0
    return v1

    .line 2326
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2327
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static joystickAxisValueToDirection(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 3178
    const/high16 v0, 0x3f00

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 3179
    const/4 v0, 0x1

    .line 3183
    :goto_0
    return v0

    .line 3180
    :cond_0
    const/high16 v0, -0x4100

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    .line 3181
    const/4 v0, -0x1

    goto :goto_0

    .line 3183
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 5

    .prologue
    const/16 v4, 0x82

    const/4 v2, 0x0

    .line 2848
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 2849
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2851
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2852
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    move v1, v2

    .line 2870
    :goto_0
    return v1

    .line 2855
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x4

    if-eq v1, v3, :cond_1

    move v1, v2

    .line 2859
    goto :goto_0

    .line 2865
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2866
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 2867
    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    goto :goto_0

    .end local v0           #focused:Landroid/view/View;
    :cond_2
    move v1, v2

    .line 2870
    goto :goto_0
.end method

.method private performTraversals()V
    .locals 78

    .prologue
    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v41, v0

    .line 864
    .local v41, host:Landroid/view/View;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->processInputEvents(Z)V

    .line 872
    if-eqz v41, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_1

    .line 1690
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 876
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 877
    const/16 v76, 0x0

    .line 878
    .local v76, windowSizeMayChange:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    move/from16 v37, v0

    .line 879
    .local v37, fullRedrawNeeded:Z
    const/16 v54, 0x0

    .line 880
    .local v54, newSurface:Z
    const/16 v68, 0x0

    .line 881
    .local v68, surfaceChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v52, v0

    .line 888
    .local v52, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    .line 890
    .local v18, attachInfo:Landroid/view/View$AttachInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v71

    .line 891
    .local v71, viewVisibility:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v71

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_13

    :cond_2
    const/16 v72, 0x1

    .line 894
    .local v72, viewVisibilityChanged:Z
    :goto_1
    const/16 v59, 0x0

    .line 895
    .local v59, params:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v4, :cond_3

    .line 896
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 897
    const/16 v68, 0x1

    .line 898
    move-object/from16 v59, v52

    .line 900
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v4}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v25

    .line 901
    .local v25, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v4, v5, :cond_4

    .line 902
    move-object/from16 v59, v52

    .line 903
    const/16 v37, 0x1

    .line 904
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 905
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v4, :cond_14

    .line 906
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x20000001

    and-int/2addr v4, v5

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 907
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 914
    :cond_4
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    .line 917
    .local v36, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_16

    .line 918
    const/16 v37, 0x1

    .line 919
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 921
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7de

    if-ne v4, v5, :cond_15

    .line 923
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 924
    .local v32, disp:Landroid/view/Display;
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 925
    .local v65, size:Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 926
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    .line 927
    .local v30, desiredWindowWidth:I
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    .line 939
    .end local v32           #disp:Landroid/view/Display;
    .end local v65           #size:Landroid/graphics/Point;
    .local v29, desiredWindowHeight:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 943
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 944
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 945
    move/from16 v0, v71

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 946
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 947
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 948
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 949
    const/16 v72, 0x0

    .line 950
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 951
    const/4 v4, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 954
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 968
    :cond_5
    :goto_4
    if-eqz v72, :cond_8

    .line 969
    move/from16 v0, v71

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 970
    move-object/from16 v0, v41

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 971
    if-nez v71, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_7

    .line 972
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 974
    :cond_7
    const/16 v4, 0x8

    move/from16 v0, v71

    if-ne v0, v4, :cond_8

    .line 977
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 981
    :cond_8
    const/16 v48, 0x0

    .line 983
    .local v48, insetsChanged:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_d

    .line 986
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    .line 990
    .local v61, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_19

    .line 993
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-nez v4, :cond_18

    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 994
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 1028
    :cond_9
    :goto_6
    const/16 v38, 0x0

    .line 1029
    .local v38, goodMeasure:Z
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_b

    .line 1034
    invoke-virtual/range {v61 .. v61}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    .line 1035
    .local v58, packageMetrics:Landroid/util/DisplayMetrics;
    const v4, 0x1050007

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v6, 0x1

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1036
    const/16 v19, 0x0

    .line 1037
    .local v19, baseSize:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    move/from16 v19, v0

    .line 1041
    :cond_a
    if-eqz v19, :cond_b

    move/from16 v0, v30

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 1042
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1043
    .local v24, childWidthMeasureSpec:I
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v23

    .line 1044
    .local v23, childHeightMeasureSpec:I
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1047
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    if-nez v4, :cond_1e

    .line 1048
    const/16 v38, 0x1

    .line 1066
    .end local v19           #baseSize:I
    .end local v23           #childHeightMeasureSpec:I
    .end local v24           #childWidthMeasureSpec:I
    .end local v58           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_b
    :goto_7
    if-nez v38, :cond_d

    .line 1067
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1068
    .restart local v24       #childWidthMeasureSpec:I
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v23

    .line 1069
    .restart local v23       #childHeightMeasureSpec:I
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1070
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v4, v5, :cond_d

    .line 1071
    :cond_c
    const/16 v76, 0x1

    .line 1082
    .end local v23           #childHeightMeasureSpec:I
    .end local v24           #childWidthMeasureSpec:I
    .end local v38           #goodMeasure:Z
    .end local v61           #res:Landroid/content/res/Resources;
    :cond_d
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_f

    .line 1084
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1085
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v56, v0

    .line 1086
    .local v56, oldScreenOn:Z
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move/from16 v57, v0

    .line 1087
    .local v57, oldVis:I
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move/from16 v55, v0

    .line 1088
    .local v55, oldHasSystemUiListeners:Z
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1089
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1090
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1091
    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 1092
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v0, v56

    if-ne v4, v0, :cond_e

    move-object/from16 v0, v18

    iget v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move/from16 v0, v57

    if-ne v4, v0, :cond_e

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move/from16 v0, v55

    if-eq v4, v0, :cond_f

    .line 1095
    :cond_e
    move-object/from16 v59, v52

    .line 1098
    .end local v55           #oldHasSystemUiListeners:Z
    .end local v56           #oldScreenOn:Z
    .end local v57           #oldVis:I
    :cond_f
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v4, :cond_10

    .line 1099
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 1100
    move-object/from16 v59, v52

    .line 1103
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_11

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v4, :cond_21

    .line 1104
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 1105
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v4, 0xf0

    move/from16 v62, v0

    .line 1109
    .local v62, resizeMode:I
    if-nez v62, :cond_21

    .line 1110
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1111
    .local v16, N:I
    const/16 v44, 0x0

    .local v44, i:I
    :goto_8
    move/from16 v0, v44

    move/from16 v1, v16

    if-ge v0, v1, :cond_1f

    .line 1112
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1113
    const/16 v62, 0x10

    .line 1111
    :cond_12
    add-int/lit8 v44, v44, 0x1

    goto :goto_8

    .line 891
    .end local v16           #N:I
    .end local v25           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v29           #desiredWindowHeight:I
    .end local v30           #desiredWindowWidth:I
    .end local v36           #frame:Landroid/graphics/Rect;
    .end local v44           #i:I
    .end local v48           #insetsChanged:Z
    .end local v59           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v62           #resizeMode:I
    .end local v72           #viewVisibilityChanged:Z
    :cond_13
    const/16 v72, 0x0

    goto/16 :goto_1

    .line 909
    .restart local v25       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v59       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v72       #viewVisibilityChanged:Z
    :cond_14
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2000

    or-int/2addr v4, v5

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 910
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto/16 :goto_2

    .line 929
    .restart local v36       #frame:Landroid/graphics/Rect;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    .line 931
    .restart local v58       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    .line 932
    .restart local v30       #desiredWindowWidth:I
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    .restart local v29       #desiredWindowHeight:I
    goto/16 :goto_3

    .line 957
    .end local v29           #desiredWindowHeight:I
    .end local v30           #desiredWindowWidth:I
    .end local v58           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_16
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v30

    .line 958
    .restart local v30       #desiredWindowWidth:I
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v29

    .line 959
    .restart local v29       #desiredWindowHeight:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v0, v30

    if-ne v0, v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v0, v29

    if-eq v0, v4, :cond_5

    .line 962
    :cond_17
    const/16 v37, 0x1

    .line 963
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 964
    const/16 v76, 0x1

    goto/16 :goto_4

    .line 993
    .restart local v48       #insetsChanged:Z
    .restart local v61       #res:Landroid/content/res/Resources;
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 996
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 997
    const/16 v48, 0x1

    .line 999
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1000
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1004
    :cond_1b
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1c

    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_9

    .line 1006
    :cond_1c
    const/16 v76, 0x1

    .line 1008
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7de

    if-ne v4, v5, :cond_1d

    .line 1010
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 1011
    .restart local v32       #disp:Landroid/view/Display;
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 1012
    .restart local v65       #size:Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1013
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    .line 1014
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    .line 1015
    goto/16 :goto_6

    .line 1016
    .end local v32           #disp:Landroid/view/Display;
    .end local v65           #size:Landroid/graphics/Point;
    :cond_1d
    invoke-virtual/range {v61 .. v61}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    .line 1017
    .restart local v58       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    .line 1018
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    goto/16 :goto_6

    .line 1051
    .restart local v19       #baseSize:I
    .restart local v23       #childHeightMeasureSpec:I
    .restart local v24       #childWidthMeasureSpec:I
    .restart local v38       #goodMeasure:Z
    :cond_1e
    add-int v4, v19, v30

    div-int/lit8 v19, v4, 0x2

    .line 1054
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1055
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1058
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    if-nez v4, :cond_b

    .line 1060
    const/16 v38, 0x1

    goto/16 :goto_7

    .line 1116
    .end local v19           #baseSize:I
    .end local v23           #childHeightMeasureSpec:I
    .end local v24           #childWidthMeasureSpec:I
    .end local v38           #goodMeasure:Z
    .end local v58           #packageMetrics:Landroid/util/DisplayMetrics;
    .end local v61           #res:Landroid/content/res/Resources;
    .restart local v16       #N:I
    .restart local v44       #i:I
    .restart local v62       #resizeMode:I
    :cond_1f
    if-nez v62, :cond_20

    .line 1117
    const/16 v62, 0x20

    .line 1119
    :cond_20
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0xf0

    move/from16 v0, v62

    if-eq v4, v0, :cond_21

    .line 1121
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0xf1

    or-int v4, v4, v62

    move-object/from16 v0, v52

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1124
    move-object/from16 v59, v52

    .line 1129
    .end local v16           #N:I
    .end local v44           #i:I
    .end local v62           #resizeMode:I
    :cond_21
    if-eqz v59, :cond_22

    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_22

    .line 1130
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_22

    .line 1131
    const/4 v4, -0x3

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1135
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_35

    if-eqz v76, :cond_35

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_24

    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_23

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move/from16 v0, v30

    if-ge v4, v0, :cond_23

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v5, :cond_24

    :cond_23
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_35

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v0, v29

    if-ge v4, v0, :cond_35

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v5, :cond_35

    :cond_24
    const/16 v75, 0x1

    .line 1142
    .local v75, windowShouldResize:Z
    :goto_9
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v27

    .line 1145
    .local v27, computesInternalInsets:Z
    const/16 v49, 0x0

    .line 1146
    .local v49, insetsPending:Z
    const/16 v60, 0x0

    .line 1148
    .local v60, relayoutResult:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_25

    if-nez v75, :cond_25

    if-nez v48, :cond_25

    if-nez v72, :cond_25

    if-eqz v59, :cond_50

    .line 1151
    :cond_25
    if-nez v71, :cond_27

    .line 1161
    if-eqz v27, :cond_36

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_26

    if-eqz v72, :cond_36

    :cond_26
    const/16 v49, 0x1

    .line 1164
    :cond_27
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_28

    .line 1165
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1166
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 1169
    :cond_28
    const/16 v42, 0x0

    .line 1170
    .local v42, hwInitialized:Z
    const/16 v28, 0x0

    .line 1172
    .local v28, contentInsetsChanged:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v39

    .line 1175
    .local v39, hadSurface:Z
    const/16 v34, 0x0

    .line 1176
    .local v34, fl:I
    if-eqz v59, :cond_2a

    .line 1177
    :try_start_0
    move-object/from16 v0, v59

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v34, v0

    .line 1178
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v4, :cond_29

    .line 1179
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1181
    :cond_29
    move-object/from16 v0, v18

    iget v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1182
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move-object/from16 v0, v59

    iput-boolean v4, v0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1189
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v69

    .line 1190
    .local v69, surfaceGenerationId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v71

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v60

    .line 1192
    if-eqz v59, :cond_2b

    .line 1193
    move/from16 v0, v34

    move-object/from16 v1, v59

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1201
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    if-eqz v4, :cond_2c

    .line 1204
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_37

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/res/Configuration;->seq:I

    .line 1208
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    const/16 v28, 0x1

    .line 1210
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const/16 v73, 0x1

    .line 1212
    .local v73, visibleInsetsChanged:Z
    :goto_d
    if-eqz v28, :cond_31

    .line 1213
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-lez v4, :cond_30

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-lez v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v4

    if-eqz v4, :cond_30

    if-eqz v52, :cond_30

    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1221
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1223
    const/16 v26, 0x0

    .line 1224
    .local v26, completed:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->getCanvas()Landroid/view/HardwareCanvas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v43

    .line 1225
    .local v43, hwRendererCanvas:Landroid/view/HardwareCanvas;
    const/16 v50, 0x0

    .line 1227
    .local v50, layerCanvas:Landroid/view/HardwareCanvas;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v4, :cond_3a

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v11}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1234
    :cond_2d
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;

    move-result-object v50

    .line 1235
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 1236
    const/4 v4, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 1237
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->save()I

    move-result v63

    .line 1239
    .local v63, restoreCount:I
    const/high16 v4, -0x100

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1242
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3d

    const/16 v64, 0x1

    .line 1244
    .local v64, scrolling:Z
    :goto_f
    if-eqz v64, :cond_3e

    .line 1245
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v77

    .line 1246
    .local v77, yoff:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1251
    :goto_10
    const/4 v4, 0x0

    move/from16 v0, v77

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_2e

    .line 1253
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1256
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    .line 1259
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    .line 1261
    const/16 v26, 0x1

    .line 1263
    move-object/from16 v0, v50

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->restoreToCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 1267
    if-eqz v50, :cond_2f

    .line 1268
    :try_start_2
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1270
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_30

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1272
    if-nez v26, :cond_30

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->destroy()V

    .line 1274
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1279
    .end local v26           #completed:Z
    .end local v43           #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .end local v50           #layerCanvas:Landroid/view/HardwareCanvas;
    .end local v63           #restoreCount:I
    .end local v64           #scrolling:Z
    .end local v77           #yoff:I
    :cond_30
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1284
    :cond_31
    if-eqz v73, :cond_32

    .line 1285
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1290
    :cond_32
    if-nez v39, :cond_42

    .line 1291
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1299
    const/16 v54, 0x1

    .line 1300
    const/16 v37, 0x1

    .line 1301
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 1303
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_33

    .line 1305
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/SurfaceHolder;)Z
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v42

    .line 1358
    .end local v69           #surfaceGenerationId:I
    .end local v73           #visibleInsetsChanged:Z
    :cond_33
    :goto_12
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1359
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1364
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1365
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_49

    .line 1369
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1372
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v5, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1374
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1376
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1377
    if-nez v39, :cond_47

    .line 1378
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1380
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1381
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1383
    .local v21, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v21, :cond_46

    .line 1384
    move-object/from16 v17, v21

    .local v17, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .local v51, len$:I
    const/16 v45, 0x0

    .local v45, i$:I
    :goto_13
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_46

    aget-object v20, v17, v45

    .line 1385
    .local v20, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1384
    add-int/lit8 v45, v45, 0x1

    goto :goto_13

    .line 1135
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v27           #computesInternalInsets:Z
    .end local v28           #contentInsetsChanged:Z
    .end local v34           #fl:I
    .end local v39           #hadSurface:Z
    .end local v42           #hwInitialized:Z
    .end local v45           #i$:I
    .end local v49           #insetsPending:Z
    .end local v51           #len$:I
    .end local v60           #relayoutResult:I
    .end local v75           #windowShouldResize:Z
    :cond_35
    const/16 v75, 0x0

    goto/16 :goto_9

    .line 1161
    .restart local v27       #computesInternalInsets:Z
    .restart local v49       #insetsPending:Z
    .restart local v60       #relayoutResult:I
    .restart local v75       #windowShouldResize:Z
    :cond_36
    const/16 v49, 0x0

    goto/16 :goto_a

    .line 1204
    .restart local v28       #contentInsetsChanged:Z
    .restart local v34       #fl:I
    .restart local v39       #hadSurface:Z
    .restart local v42       #hwInitialized:Z
    .restart local v69       #surfaceGenerationId:I
    :cond_37
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 1208
    :cond_38
    const/16 v28, 0x0

    goto/16 :goto_c

    .line 1210
    :cond_39
    const/16 v73, 0x0

    goto/16 :goto_d

    .line 1230
    .restart local v26       #completed:Z
    .restart local v43       #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .restart local v50       #layerCanvas:Landroid/view/HardwareCanvas;
    .restart local v73       #visibleInsetsChanged:Z
    :cond_3a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v5, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v5, :cond_2d

    .line 1232
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareLayer;->resize(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_e

    .line 1264
    :catch_0
    move-exception v33

    .line 1265
    .local v33, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v4, "ViewRootImpl"

    const-string v5, "Not enough memory for content change anim buffer"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1267
    if-eqz v50, :cond_3c

    .line 1268
    :try_start_6
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1270
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_30

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1272
    if-nez v26, :cond_30

    .line 1273
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->destroy()V

    .line 1274
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_11

    .line 1352
    .end local v26           #completed:Z
    .end local v33           #e:Ljava/lang/OutOfMemoryError;
    .end local v43           #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .end local v50           #layerCanvas:Landroid/view/HardwareCanvas;
    .end local v69           #surfaceGenerationId:I
    .end local v73           #visibleInsetsChanged:Z
    :catch_1
    move-exception v4

    goto/16 :goto_12

    .line 1242
    .restart local v26       #completed:Z
    .restart local v43       #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .restart local v50       #layerCanvas:Landroid/view/HardwareCanvas;
    .restart local v63       #restoreCount:I
    .restart local v69       #surfaceGenerationId:I
    .restart local v73       #visibleInsetsChanged:Z
    :cond_3d
    const/16 v64, 0x0

    goto/16 :goto_f

    .line 1248
    .restart local v64       #scrolling:Z
    :cond_3e
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v77, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0

    .restart local v77       #yoff:I
    goto/16 :goto_10

    .line 1267
    .end local v63           #restoreCount:I
    .end local v64           #scrolling:Z
    .end local v77           #yoff:I
    :catchall_0
    move-exception v4

    if-eqz v50, :cond_3f

    .line 1268
    :try_start_8
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1270
    :cond_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v5, :cond_40

    .line 1271
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1272
    if-nez v26, :cond_40

    .line 1273
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->destroy()V

    .line 1274
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    :cond_40
    throw v4

    .line 1306
    .end local v26           #completed:Z
    .end local v43           #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .end local v50           #layerCanvas:Landroid/view/HardwareCanvas;
    :catch_2
    move-exception v33

    .line 1307
    .local v33, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v4, "ViewRootImpl"

    const-string v5, "OutOfResourcesException initializing HW surface"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1309
    :try_start_9
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 1310
    const-string v4, "ViewRootImpl"

    const-string v5, "No processes killed for memory; killing self"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    .line 1315
    :cond_41
    :goto_14
    const/4 v4, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .line 1320
    .end local v33           #e:Landroid/view/Surface$OutOfResourcesException;
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1323
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    .line 1324
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 1325
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_43

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1328
    :cond_43
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1330
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1332
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->destroy(Z)V

    goto/16 :goto_12

    .line 1334
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v69

    if-eq v0, v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    if-eqz v4, :cond_33

    .line 1336
    const/16 v37, 0x1

    .line 1338
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/SurfaceHolder;)V
    :try_end_b
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_12

    .line 1339
    :catch_3
    move-exception v33

    .line 1340
    .restart local v33       #e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_c
    const-string v4, "ViewRootImpl"

    const-string v5, "OutOfResourcesException updating HW surface"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    .line 1342
    :try_start_d
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 1343
    const-string v4, "ViewRootImpl"

    const-string v5, "No processes killed for memory; killing self"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7

    .line 1348
    :cond_45
    :goto_15
    const/4 v4, 0x1

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 1388
    .end local v33           #e:Landroid/view/Surface$OutOfResourcesException;
    .end local v69           #surfaceGenerationId:I
    .end local v73           #visibleInsetsChanged:Z
    .restart local v21       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_46
    const/16 v68, 0x1

    .line 1390
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_47
    if-eqz v68, :cond_48

    .line 1391
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v52

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v4, v5, v6, v11, v12}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1394
    .restart local v21       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v21, :cond_48

    .line 1395
    move-object/from16 v17, v21

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v45, 0x0

    .restart local v45       #i$:I
    :goto_16
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_48

    aget-object v20, v17, v45

    .line 1396
    .restart local v20       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5, v6, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1395
    add-int/lit8 v45, v45, 0x1

    goto :goto_16

    .line 1401
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v45           #i$:I
    .end local v51           #len$:I
    :cond_48
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1420
    :cond_49
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_4b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1422
    if-nez v42, :cond_4a

    if-nez v75, :cond_4a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_4a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_4b

    .line 1425
    :cond_4a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 1426
    if-nez v42, :cond_4b

    .line 1427
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/SurfaceHolder;)V

    .line 1432
    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_50

    .line 1433
    and-int/lit8 v4, v60, 0x1

    if-eqz v4, :cond_5c

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v35

    .line 1435
    .local v35, focusChangedDueToTouchMode:Z
    if-nez v35, :cond_4c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_4c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_4c

    if-eqz v28, :cond_50

    .line 1437
    :cond_4c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1438
    .restart local v24       #childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v23

    .line 1447
    .restart local v23       #childHeightMeasureSpec:I
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1452
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v74

    .line 1453
    .local v74, width:I
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    .line 1454
    .local v40, height:I
    const/16 v53, 0x0

    .line 1456
    .local v53, measureAgain:Z
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4d

    .line 1457
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int v4, v4, v74

    int-to-float v4, v4

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v74, v74, v4

    .line 1458
    const/high16 v4, 0x4000

    move/from16 v0, v74

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1460
    const/16 v53, 0x1

    .line 1462
    :cond_4d
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4e

    .line 1463
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int v4, v4, v40

    int-to-float v4, v4

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v40, v40, v4

    .line 1464
    const/high16 v4, 0x4000

    move/from16 v0, v40

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1466
    const/16 v53, 0x1

    .line 1469
    :cond_4e
    if-eqz v53, :cond_4f

    .line 1473
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1476
    :cond_4f
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1481
    .end local v23           #childHeightMeasureSpec:I
    .end local v24           #childWidthMeasureSpec:I
    .end local v28           #contentInsetsChanged:Z
    .end local v34           #fl:I
    .end local v35           #focusChangedDueToTouchMode:Z
    .end local v39           #hadSurface:Z
    .end local v40           #height:I
    .end local v42           #hwInitialized:Z
    .end local v53           #measureAgain:Z
    .end local v74           #width:I
    :cond_50
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_5d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_5d

    const/16 v31, 0x1

    .line 1482
    .local v31, didLayout:Z
    :goto_19
    if-nez v31, :cond_51

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_5e

    :cond_51
    const/16 v70, 0x1

    .line 1484
    .local v70, triggerGlobalLayoutListener:Z
    :goto_1a
    if-eqz v31, :cond_53

    .line 1485
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1486
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 1490
    const-wide/16 v66, 0x0

    .line 1494
    .local v66, startTime:J
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5, v6, v11}, Landroid/view/View;->layout(IIII)V

    .line 1511
    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_53

    .line 1514
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v11, 0x1

    aget v6, v6, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, v41

    iget v12, v0, Landroid/view/View;->mRight:I

    add-int/2addr v11, v12

    move-object/from16 v0, v41

    iget v12, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, v41

    iget v13, v0, Landroid/view/View;->mBottom:I

    add-int/2addr v12, v13

    move-object/from16 v0, v41

    iget v13, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v13

    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/Region;->set(IIII)Z

    .line 1519
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1520
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_52

    .line 1521
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1524
    :cond_52
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 1525
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1528
    :try_start_f
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v4, v5, v6}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_6

    .line 1541
    .end local v66           #startTime:J
    :cond_53
    :goto_1b
    if-eqz v70, :cond_54

    .line 1542
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1543
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 1545
    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1546
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback()V

    .line 1550
    :cond_54
    if-eqz v27, :cond_56

    .line 1552
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v47, v0

    .line 1553
    .local v47, insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 1556
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1559
    if-nez v49, :cond_55

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1560
    :cond_55
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_5f

    .line 1567
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1568
    .local v7, contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1569
    .local v8, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v9

    .line 1577
    .local v9, touchableRegion:Landroid/graphics/Region;
    :goto_1c
    :try_start_10
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v47

    iget v6, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v4 .. v9}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_5

    .line 1584
    .end local v7           #contentInsets:Landroid/graphics/Rect;
    .end local v8           #visibleInsets:Landroid/graphics/Rect;
    .end local v9           #touchableRegion:Landroid/graphics/Region;
    .end local v47           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_56
    :goto_1d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_57

    .line 1588
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_57

    .line 1589
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_60

    .line 1590
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/View;->requestFocus(I)Z

    .line 1591
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 1602
    :cond_57
    :goto_1e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 1603
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1604
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 1605
    move/from16 v0, v71

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 1607
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_58

    .line 1608
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v46

    .line 1610
    .local v46, imTarget:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    move/from16 v0, v46

    if-eq v0, v4, :cond_58

    .line 1611
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 1612
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    .line 1613
    .local v10, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v10, :cond_58

    if-eqz v46, :cond_58

    .line 1614
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v4, :cond_61

    const/4 v14, 0x1

    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v15, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v10 .. v15}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1622
    .end local v10           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v46           #imTarget:Z
    :cond_58
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v4

    if-nez v4, :cond_59

    if-eqz v71, :cond_62

    :cond_59
    const/16 v22, 0x1

    .line 1625
    .local v22, cancelDraw:Z
    :goto_20
    if-nez v22, :cond_68

    if-nez v54, :cond_68

    .line 1626
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_64

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_64

    .line 1627
    const/16 v44, 0x0

    .restart local v44       #i:I
    :goto_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_63

    .line 1628
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 1627
    add-int/lit8 v44, v44, 0x1

    goto :goto_21

    .line 1402
    .end local v22           #cancelDraw:Z
    .end local v31           #didLayout:Z
    .end local v44           #i:I
    .end local v70           #triggerGlobalLayoutListener:Z
    .restart local v28       #contentInsetsChanged:Z
    .restart local v34       #fl:I
    .restart local v39       #hadSurface:Z
    .restart local v42       #hwInitialized:Z
    :cond_5a
    if-eqz v39, :cond_49

    .line 1403
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1404
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1405
    .restart local v21       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1406
    if-eqz v21, :cond_5b

    .line 1407
    move-object/from16 v17, v21

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v45, 0x0

    .restart local v45       #i$:I
    :goto_22
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_5b

    aget-object v20, v17, v45

    .line 1408
    .restart local v20       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1407
    add-int/lit8 v45, v45, 0x1

    goto :goto_22

    .line 1411
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v45           #i$:I
    .end local v51           #len$:I
    :cond_5b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1413
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5}, Landroid/view/Surface;-><init>()V

    iput-object v5, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1415
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_17

    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 1433
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_5c
    const/4 v4, 0x0

    goto/16 :goto_18

    .line 1481
    .end local v28           #contentInsetsChanged:Z
    .end local v34           #fl:I
    .end local v39           #hadSurface:Z
    .end local v42           #hwInitialized:Z
    :cond_5d
    const/16 v31, 0x0

    goto/16 :goto_19

    .line 1482
    .restart local v31       #didLayout:Z
    :cond_5e
    const/16 v70, 0x0

    goto/16 :goto_1a

    .line 1571
    .restart local v47       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v70       #triggerGlobalLayoutListener:Z
    :cond_5f
    move-object/from16 v0, v47

    iget-object v7, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 1572
    .restart local v7       #contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v8, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 1573
    .restart local v8       #visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v9, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .restart local v9       #touchableRegion:Landroid/graphics/Region;
    goto/16 :goto_1c

    .line 1595
    .end local v7           #contentInsets:Landroid/graphics/Rect;
    .end local v8           #visibleInsets:Landroid/graphics/Rect;
    .end local v9           #touchableRegion:Landroid/graphics/Region;
    .end local v47           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_60
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    goto/16 :goto_1e

    .line 1615
    .restart local v10       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v46       #imTarget:Z
    :cond_61
    const/4 v14, 0x0

    goto/16 :goto_1f

    .line 1622
    .end local v10           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v46           #imTarget:Z
    :cond_62
    const/16 v22, 0x0

    goto/16 :goto_20

    .line 1630
    .restart local v22       #cancelDraw:Z
    .restart local v44       #i:I
    :cond_63
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1632
    .end local v44           #i:I
    :cond_64
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1639
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->draw(Z)V

    .line 1645
    and-int/lit8 v4, v60, 0x2

    if-nez v4, :cond_65

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_0

    .line 1650
    :cond_65
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1651
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_67

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1652
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1654
    .restart local v21       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v21, :cond_67

    .line 1655
    move-object/from16 v17, v21

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v45, 0x0

    .restart local v45       #i$:I
    :goto_23
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_67

    aget-object v20, v17, v45

    .line 1656
    .restart local v20       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    instance-of v4, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_66

    .line 1657
    check-cast v20, Landroid/view/SurfaceHolder$Callback2;

    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1655
    :cond_66
    add-int/lit8 v45, v45, 0x1

    goto :goto_23

    .line 1664
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v45           #i$:I
    .end local v51           #len$:I
    :cond_67
    :try_start_12
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_0

    .line 1665
    :catch_4
    move-exception v4

    goto/16 :goto_0

    .line 1670
    :cond_68
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_6a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6a

    .line 1671
    const/16 v44, 0x0

    .restart local v44       #i:I
    :goto_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_69

    .line 1672
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 1671
    add-int/lit8 v44, v44, 0x1

    goto :goto_24

    .line 1674
    :cond_69
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1678
    .end local v44           #i:I
    :cond_6a
    and-int/lit8 v4, v60, 0x2

    if-eqz v4, :cond_6b

    .line 1679
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1681
    :cond_6b
    if-eqz v37, :cond_6c

    .line 1682
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1685
    :cond_6c
    if-nez v71, :cond_0

    .line 1687
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 1579
    .end local v22           #cancelDraw:Z
    .restart local v7       #contentInsets:Landroid/graphics/Rect;
    .restart local v8       #visibleInsets:Landroid/graphics/Rect;
    .restart local v9       #touchableRegion:Landroid/graphics/Region;
    .restart local v47       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_5
    move-exception v4

    goto/16 :goto_1d

    .line 1529
    .end local v7           #contentInsets:Landroid/graphics/Rect;
    .end local v8           #visibleInsets:Landroid/graphics/Rect;
    .end local v9           #touchableRegion:Landroid/graphics/Region;
    .end local v47           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v66       #startTime:J
    :catch_6
    move-exception v4

    goto/16 :goto_1b

    .line 1346
    .end local v31           #didLayout:Z
    .end local v66           #startTime:J
    .end local v70           #triggerGlobalLayoutListener:Z
    .restart local v28       #contentInsetsChanged:Z
    .restart local v33       #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v34       #fl:I
    .restart local v39       #hadSurface:Z
    .restart local v42       #hwInitialized:Z
    .restart local v69       #surfaceGenerationId:I
    .restart local v73       #visibleInsetsChanged:Z
    :catch_7
    move-exception v4

    goto/16 :goto_15

    .line 1313
    :catch_8
    move-exception v4

    goto/16 :goto_14
.end method

.method private postSendWindowContentChangedCallback()V
    .locals 3

    .prologue
    .line 4023
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    .line 4024
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 4027
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_1

    .line 4028
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mIsPending:Z

    .line 4029
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4032
    :cond_1
    return-void
.end method

.method private processInputEvents(Z)V
    .locals 2
    .parameter "outOfOrder"

    .prologue
    .line 849
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v1, :cond_1

    .line 850
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    iget-object v1, v1, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->handleMessage(Landroid/os/Message;)V

    .line 851
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 852
    .local v0, tmpMessage:Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    iget-object v1, v1, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 853
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputEventMessage;->recycle()V

    .line 854
    if-eqz p1, :cond_0

    .line 855
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->removeMessages(I)V

    goto :goto_0

    .line 858
    .end local v0           #tmpMessage:Landroid/view/ViewRootImpl$InputEventMessage;
    :cond_1
    return-void
.end method

.method private profileRendering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1769
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_0

    .line 1770
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 1771
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 1772
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/view/ViewRootImpl$1;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    const-string v2, "Rendering Profiler"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    .line 1793
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1795
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1796
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 17
    .parameter "params"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3595
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v14, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 3596
    .local v14, appScale:F
    const/16 v16, 0x0

    .line 3597
    .local v16, restore:Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_0

    .line 3598
    const/16 v16, 0x1

    .line 3599
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 3600
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 3602
    :cond_0
    if-eqz p1, :cond_1

    .line 3605
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 3607
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_2

    .line 3609
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 3610
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3612
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3615
    :cond_2
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v6, 0x3f00

    add-float/2addr v4, v6

    float-to-int v6, v4

    if-eqz p3, :cond_5

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v13}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .line 3623
    .local v15, relayoutResult:I
    if-eqz v16, :cond_3

    .line 3624
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 3627
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    .line 3628
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 3629
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3630
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3632
    :cond_4
    return v15

    .line 3615
    .end local v15           #relayoutResult:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 1

    .prologue
    .line 4039
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 4040
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4042
    :cond_0
    return-void
.end method

.method private sendAccessibilityEvents()V
    .locals 3

    .prologue
    .line 4006
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4014
    :cond_0
    :goto_0
    return-void

    .line 4009
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4010
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4011
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 4012
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    .locals 2
    .parameter "finishedCallback"

    .prologue
    .line 2689
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    if-eqz v0, :cond_0

    .line 2690
    const-string v0, "ViewRootImpl"

    const-string v1, "Received a new input event from the input queue but there is already an unfinished input event in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    :cond_0
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    .line 2701
    return-void
.end method

.method private trackFPS()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1807
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1808
    .local v3, nowTime:J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 1809
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 1810
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 1825
    :cond_0
    :goto_0
    return-void

    .line 1812
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 1813
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1814
    .local v5, thisHash:Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v1, v3, v8

    .line 1815
    .local v1, frameTime:J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v3, v8

    .line 1816
    .local v6, totalTime:J
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 1818
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 1819
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    .line 1820
    .local v0, fps:F
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 1822
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0
.end method

.method private tryToSkipResizedMsg(Landroid/view/ViewRootImpl$ResizedInfo;Landroid/os/Message;)Z
    .locals 3
    .parameter "ri"
    .parameter "msg"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2678
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v2, p2, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v2, p2, Landroid/os/Message;->arg2:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v0, v0, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mSkipResizedMsg:Z

    if-eqz v0, :cond_0

    .line 2682
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mSkipResizedMsg:Z

    .line 2683
    const/4 v0, 0x1

    .line 2685
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateJoystickDirection(Landroid/view/MotionEvent;Z)V
    .locals 16
    .parameter "event"
    .parameter "synthesizeNewKeys"

    .prologue
    .line 3123
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 3124
    .local v2, time:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 3125
    .local v9, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v10

    .line 3126
    .local v10, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v13

    .line 3128
    .local v13, source:I
    const/16 v1, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v14

    .line 3129
    .local v14, xDirection:I
    if-nez v14, :cond_0

    .line 3130
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v14

    .line 3133
    :cond_0
    const/16 v1, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v15

    .line 3134
    .local v15, yDirection:I
    if-nez v15, :cond_1

    .line 3135
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v15

    .line 3138
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXDirection:I

    if-eq v14, v1, :cond_3

    .line 3139
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    if-eqz v1, :cond_2

    .line 3140
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3143
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    .line 3146
    :cond_2
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ViewRootImpl;->mLastJoystickXDirection:I

    .line 3148
    if-eqz v14, :cond_3

    if-eqz p2, :cond_3

    .line 3149
    if-lez v14, :cond_6

    const/16 v1, 0x16

    :goto_0
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    .line 3151
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3157
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYDirection:I

    if-eq v15, v1, :cond_5

    .line 3158
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    if-eqz v1, :cond_4

    .line 3159
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3162
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    .line 3165
    :cond_4
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewRootImpl;->mLastJoystickYDirection:I

    .line 3167
    if-eqz v15, :cond_5

    if-eqz p2, :cond_5

    .line 3168
    if-lez v15, :cond_7

    const/16 v1, 0x14

    :goto_1
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    .line 3170
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3175
    :cond_5
    return-void

    .line 3149
    :cond_6
    const/16 v1, 0x15

    goto :goto_0

    .line 3168
    :cond_7
    const/16 v1, 0x13

    goto :goto_1
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 790
    return-void
.end method

.method checkThread()V
    .locals 2

    .prologue
    .line 4067
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4068
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4071
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 4056
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    .line 2197
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2199
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2202
    .local v0, oldFocus:Landroid/view/View;
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2203
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2205
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2206
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2211
    :cond_0
    :goto_0
    return-void

    .line 2208
    :cond_1
    if-eqz v0, :cond_0

    .line 2209
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 4053
    return-void
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 3694
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 3695
    return-void
.end method

.method destroyHardwareLayers()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 593
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/16 v0, 0x3c

    invoke-static {v0}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    goto :goto_0
.end method

.method destroyHardwareResources()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    .line 580
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 582
    :cond_1
    return-void
.end method

.method public die(Z)V
    .locals 1
    .parameter "immediate"

    .prologue
    .line 3723
    if-eqz p1, :cond_0

    .line 3724
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 3728
    :goto_0
    return-void

    .line 3726
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 3954
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3955
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3956
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3957
    return-void

    .line 3955
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 3973
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3974
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3975
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3976
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3977
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2248
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2249
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    .line 2253
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2256
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 2257
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 2259
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 2261
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2262
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 2263
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 2265
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 2267
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 2269
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_4

    .line 2270
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 2271
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 2272
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 2277
    :cond_2
    :goto_0
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2283
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 2284
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2285
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 2287
    :cond_3
    return-void

    .line 2273
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    .line 2274
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    goto :goto_0

    .line 2278
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 3981
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3982
    const/16 v1, 0x3f8

    .line 3983
    .local v1, what:I
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->removeMessages(I)V

    .line 3987
    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewRootImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3988
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3989
    return-void

    .line 3985
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_0
    const/16 v1, 0x3f7

    .restart local v1       #what:I
    goto :goto_0
.end method

.method public dispatchFinishedEvent(IZ)V
    .locals 2
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 3776
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3777
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3778
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 3779
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3780
    return-void

    .line 3778
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .prologue
    .line 3960
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3961
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3962
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 3895
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;Z)V

    .line 3896
    return-void
.end method

.method public dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 3788
    if-eqz p5, :cond_1

    const/16 v2, 0x3eb

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3789
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 3790
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3791
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3792
    int-to-float v2, p1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 3793
    int-to-float v2, p2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    .line 3795
    :cond_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3796
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 3797
    new-instance v1, Landroid/view/ViewRootImpl$ResizedInfo;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$ResizedInfo;-><init>(Landroid/view/ViewRootImpl;)V

    .line 3798
    .local v1, ri:Landroid/view/ViewRootImpl$ResizedInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    .line 3799
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 3800
    iput-object p6, v1, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 3801
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3802
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3803
    return-void

    .line 3788
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #ri:Landroid/view/ViewRootImpl$ResizedInfo;
    :cond_1
    const/16 v2, 0x3ea

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 2
    .parameter "seq"
    .parameter "globalVisibility"
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 3993
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 3994
    .local v0, args:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 3995
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 3996
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 3997
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 3998
    const/16 v1, 0x3f9

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewRootImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3999
    return-void
.end method

.method disposeResizeBuffer()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 824
    :cond_0
    return-void
.end method

.method doDie()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3731
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3733
    monitor-enter p0

    .line 3734
    :try_start_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3735
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 3736
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 3739
    :cond_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_4

    .line 3740
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 3742
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 3743
    .local v0, viewVisibility:I
    iget v2, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v2, v0, :cond_1

    const/4 v1, 0x1

    .line 3744
    .local v1, viewVisibilityChanged:Z
    :cond_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 3749
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 3751
    sget-object v2, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3757
    :cond_3
    :goto_0
    :try_start_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 3759
    .end local v0           #viewVisibility:I
    .end local v1           #viewVisibilityChanged:Z
    :cond_4
    monitor-exit p0

    .line 3760
    return-void

    .line 3759
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 3753
    .restart local v0       #viewVisibility:I
    .restart local v1       #viewVisibilityChanged:Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public dumpGfxInfo(Ljava/io/PrintWriter;[I)V
    .locals 2
    .parameter "pw"
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 3698
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3699
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 3703
    :goto_0
    return-void

    .line 3701
    :cond_0
    const/4 v0, 0x1

    aput v1, p2, v0

    aput v1, p2, v1

    goto :goto_0
.end method

.method enqueuePendingEvent(Ljava/lang/Object;Z)I
    .locals 2
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3264
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingEventSeq:I

    add-int/lit8 v0, v1, 0x1

    .line 3265
    .local v0, seq:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 3266
    :cond_0
    iput v0, p0, Landroid/view/ViewRootImpl;->mPendingEventSeq:I

    .line 3267
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3268
    if-eqz p2, :cond_1

    .end local v0           #seq:I
    :goto_0
    return v0

    .restart local v0       #seq:I
    :cond_1
    neg-int v0, v0

    goto :goto_0
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .parameter "inTouchMode"

    .prologue
    .line 2764
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    .line 2774
    :goto_0
    return v1

    .line 2768
    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2774
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_0

    .line 2769
    :catch_0
    move-exception v0

    .line 2770
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 3686
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3687
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3688
    const/4 v0, 0x0

    .line 3690
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2215
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2217
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2218
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2219
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2235
    :cond_0
    :goto_0
    return-void

    .line 2224
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2225
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 2229
    .local v0, descendantsHaveDibsOnFocus:Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2231
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 2225
    .end local v0           #descendantsHaveDibsOnFocus:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;
    .locals 2

    .prologue
    .line 3582
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3583
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3586
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    if-nez v0, :cond_1

    .line 3587
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    .line 3589
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 781
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 782
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .parameter "outLocation"

    .prologue
    .line 3561
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 3562
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 3563
    return-void
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 2369
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2422
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2371
    :pswitch_0
    const-string v0, "DO_TRAVERSAL"

    goto :goto_0

    .line 2373
    :pswitch_1
    const-string v0, "DIE"

    goto :goto_0

    .line 2375
    :pswitch_2
    const-string v0, "RESIZED"

    goto :goto_0

    .line 2377
    :pswitch_3
    const-string v0, "RESIZED_REPORT"

    goto :goto_0

    .line 2379
    :pswitch_4
    const-string v0, "WINDOW_FOCUS_CHANGED"

    goto :goto_0

    .line 2381
    :pswitch_5
    const-string v0, "DISPATCH_KEY"

    goto :goto_0

    .line 2383
    :pswitch_6
    const-string v0, "DISPATCH_POINTER"

    goto :goto_0

    .line 2385
    :pswitch_7
    const-string v0, "DISPATCH_TRACKBALL"

    goto :goto_0

    .line 2387
    :pswitch_8
    const-string v0, "DISPATCH_APP_VISIBILITY"

    goto :goto_0

    .line 2389
    :pswitch_9
    const-string v0, "DISPATCH_GET_NEW_SURFACE"

    goto :goto_0

    .line 2391
    :pswitch_a
    const-string v0, "FINISHED_EVENT"

    goto :goto_0

    .line 2393
    :pswitch_b
    const-string v0, "DISPATCH_KEY_FROM_IME"

    goto :goto_0

    .line 2395
    :pswitch_c
    const-string v0, "FINISH_INPUT_CONNECTION"

    goto :goto_0

    .line 2397
    :pswitch_d
    const-string v0, "CHECK_FOCUS"

    goto :goto_0

    .line 2399
    :pswitch_e
    const-string v0, "CLOSE_SYSTEM_DIALOGS"

    goto :goto_0

    .line 2401
    :pswitch_f
    const-string v0, "DISPATCH_DRAG_EVENT"

    goto :goto_0

    .line 2403
    :pswitch_10
    const-string v0, "DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_0

    .line 2405
    :pswitch_11
    const-string v0, "DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_0

    .line 2407
    :pswitch_12
    const-string v0, "DISPATCH_GENERIC_MOTION"

    goto :goto_0

    .line 2409
    :pswitch_13
    const-string v0, "UPDATE_CONFIGURATION"

    goto :goto_0

    .line 2411
    :pswitch_14
    const-string v0, "DO_PERFORM_ACCESSIBILITY_ACTION"

    goto :goto_0

    .line 2413
    :pswitch_15
    const-string v0, "DO_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    goto :goto_0

    .line 2415
    :pswitch_16
    const-string v0, "DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_ID"

    goto :goto_0

    .line 2417
    :pswitch_17
    const-string v0, "DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_TEXT"

    goto :goto_0

    .line 2419
    :pswitch_18
    const-string v0, "PROCESS_INPUT_EVENTS"

    goto :goto_0

    .line 2369
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 698
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    .line 699
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 700
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 702
    :cond_0
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    .line 3538
    iget v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v0, v1, :cond_0

    .line 3542
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 3543
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 3544
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3546
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3558
    :goto_0
    return-void

    .line 3547
    :cond_1
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v0, :cond_3

    .line 3548
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    .line 3549
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 3553
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)V

    .line 3554
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3555
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3557
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    goto :goto_0
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 706
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 707
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 708
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 2427
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2666
    :cond_0
    :goto_0
    return-void

    .line 2429
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 2432
    :sswitch_1
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 2433
    .local v11, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v1, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v11, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 2434
    invoke-virtual {v11}, Landroid/view/View$AttachInfo$InvalidateInfo;->release()V

    goto :goto_0

    .line 2437
    .end local v11           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_2
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_1

    .line 2438
    const-string v1, "ViewAncestor"

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 2447
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 2459
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_0

    .line 2460
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 2461
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    goto :goto_0

    .line 2465
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v2, v1}, Landroid/view/ViewRootImpl;->handleFinishedEvent(IZ)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2468
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 2471
    :sswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverPointerEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 2474
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_4
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverTrackballEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 2477
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_5
    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverGenericMotionEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_5

    .line 2480
    :sswitch_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->processInputEvents(Z)V

    goto/16 :goto_0

    .line 2483
    :sswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    .line 2486
    :sswitch_a
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto/16 :goto_0

    .line 2489
    :sswitch_b
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/view/ViewRootImpl$ResizedInfo;

    .line 2491
    .local v12, ri:Landroid/view/ViewRootImpl$ResizedInfo;
    invoke-direct {p0, v12, p1}, Landroid/view/ViewRootImpl;->tryToSkipResizedMsg(Landroid/view/ViewRootImpl$ResizedInfo;Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2495
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v12, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    .line 2503
    .end local v12           #ri:Landroid/view/ViewRootImpl$ResizedInfo;
    :cond_8
    :sswitch_c
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_0

    .line 2504
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v6, v1, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 2505
    .local v6, config:Landroid/content/res/Configuration;
    if-eqz v6, :cond_9

    .line 2506
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 2508
    :cond_9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2509
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2510
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2511
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2512
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2513
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v1, v1, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2514
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3eb

    if-ne v1, v2, :cond_a

    .line 2515
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2518
    :cond_a
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 2519
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2521
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 2525
    .end local v6           #config:Landroid/content/res/Configuration;
    :sswitch_d
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_0

    .line 2526
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_11

    const/4 v9, 0x1

    .line 2527
    .local v9, hasWindowFocus:Z
    :goto_7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v1, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 2529
    invoke-direct {p0, v9}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    .line 2531
    if-eqz v9, :cond_c

    .line 2532
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_12

    const/4 v10, 0x1

    .line 2533
    .local v10, inTouchMode:Z
    :goto_8
    invoke-direct {p0, v10}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 2535
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2537
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2539
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v3, p0, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2557
    .end local v10           #inTouchMode:Z
    :cond_c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v1}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2560
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2561
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 2562
    if-eqz v9, :cond_d

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v1, :cond_d

    .line 2563
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 2565
    :cond_d
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v1}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 2566
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2571
    :cond_e
    if-eqz v9, :cond_10

    .line 2572
    if-eqz v0, :cond_f

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v1, :cond_f

    .line 2573
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v4, :cond_14

    const/4 v4, 0x1

    :goto_9
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2579
    :cond_f
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2581
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2584
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 2587
    :cond_10
    if-eqz v9, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2588
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->sendAccessibilityEvents()V

    goto/16 :goto_0

    .line 2526
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v9           #hasWindowFocus:Z
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 2532
    .restart local v9       #hasWindowFocus:Z
    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 2541
    .restart local v10       #inTouchMode:Z
    :catch_0
    move-exception v7

    .line 2542
    .local v7, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v1, "ViewRootImpl"

    const-string v2, "OutOfResourcesException locking surface"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2544
    :try_start_1
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 2545
    const-string v1, "ViewRootImpl"

    const-string v2, "No processes killed for memory; killing self"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2551
    :cond_13
    :goto_a
    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewRootImpl;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/ViewRootImpl;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2573
    .end local v7           #e:Landroid/view/Surface$OutOfResourcesException;
    .end local v10           #inTouchMode:Z
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_14
    const/4 v4, 0x0

    goto :goto_9

    .line 2593
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v9           #hasWindowFocus:Z
    :sswitch_e
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_0

    .line 2599
    :sswitch_f
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/KeyEvent;

    .line 2600
    .local v8, event:Landroid/view/KeyEvent;
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_15

    .line 2604
    invoke-virtual {v8}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x9

    invoke-static {v8, v1}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v8

    .line 2606
    :cond_15
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 2609
    .end local v8           #event:Landroid/view/KeyEvent;
    :sswitch_10
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2610
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2611
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 2615
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_11
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 2616
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 2617
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .line 2621
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_12
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2622
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2627
    :sswitch_13
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/DragEvent;

    .line 2628
    .local v8, event:Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v1, v8, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 2629
    invoke-direct {p0, v8}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .line 2632
    .end local v8           #event:Landroid/view/DragEvent;
    :sswitch_14
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_0

    .line 2635
    :sswitch_15
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/res/Configuration;

    .line 2636
    .restart local v6       #config:Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2637
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 2639
    :cond_16
    const/4 v1, 0x0

    invoke-virtual {p0, v6, v1}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_0

    .line 2642
    .end local v6           #config:Landroid/content/res/Configuration;
    :sswitch_16
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2643
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2648
    :sswitch_17
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2649
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->perfromAccessibilityActionUiThread(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2654
    :sswitch_18
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2655
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByViewIdUiThread(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2660
    :sswitch_19
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2661
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfosByViewTextUiThread(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2548
    .restart local v7       #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v9       #hasWindowFocus:Z
    .restart local v10       #inTouchMode:Z
    :catch_1
    move-exception v1

    goto/16 :goto_a

    .line 2427
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_e
        0x3ea -> :sswitch_b
        0x3eb -> :sswitch_c
        0x3ec -> :sswitch_d
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_6
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_a
        0x3f2 -> :sswitch_3
        0x3f3 -> :sswitch_f
        0x3f4 -> :sswitch_10
        0x3f5 -> :sswitch_11
        0x3f6 -> :sswitch_12
        0x3f7 -> :sswitch_13
        0x3f8 -> :sswitch_13
        0x3f9 -> :sswitch_14
        0x3fa -> :sswitch_7
        0x3fb -> :sswitch_15
        0x3fc -> :sswitch_17
        0x3fd -> :sswitch_16
        0x3fe -> :sswitch_18
        0x3ff -> :sswitch_19
        0x400 -> :sswitch_8
    .end sparse-switch
.end method

.method invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 758
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 759
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 760
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 727
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 729
    if-nez p2, :cond_1

    .line 731
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    .line 735
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 736
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 737
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_3

    .line 738
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 740
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_4

    .line 741
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 743
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_5

    .line 744
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 747
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 748
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 749
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 751
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 752
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 753
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v0, 0x0

    .line 776
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 777
    return-object v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public onHardwarePostDraw(Landroid/view/HardwareCanvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 1747
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1749
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    const/4 v1, 0x0

    iget v2, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 1751
    :cond_0
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/HardwareCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1743
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1744
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1757
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    if-eqz v1, :cond_0

    .line 1758
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v0

    .line 1759
    .local v0, displayList:Landroid/view/DisplayList;
    if-eqz v0, :cond_0

    .line 1760
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v1, v0}, Landroid/view/HardwareCanvas;->outputDisplayList(Landroid/view/DisplayList;)V

    .line 1763
    .end local v0           #displayList:Landroid/view/DisplayList;
    :cond_0
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 3
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 3676
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3678
    :goto_0
    return v1

    .line 3677
    :catch_0
    move-exception v0

    .line 3678
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .parameter "effectId"

    .prologue
    .line 3639
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3642
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3644
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 3661
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3664
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 3666
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3667
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 3669
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 3646
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3649
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3652
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3655
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3658
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public profile()V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 400
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 2238
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2239
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2240
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2241
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 2242
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2245
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2186
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2187
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    if-eq v0, p2, :cond_0

    .line 2188
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2189
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2191
    :cond_0
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2194
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 4079
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 4075
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 715
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 716
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 717
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 4059
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4060
    const/4 v0, 0x0

    .line 4063
    :goto_0
    return v0

    .line 4062
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4063
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 840
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 841
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 844
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1694
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1695
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 1696
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1699
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1700
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1701
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 1703
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 3763
    const/16 v1, 0x3fb

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewRootImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3764
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3765
    return-void
.end method

.method retrievePendingEvent(I)Ljava/lang/Object;
    .locals 2
    .parameter "seq"

    .prologue
    .line 3272
    if-gez p1, :cond_0

    neg-int p1, p1

    .line 3273
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3274
    .local v0, event:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 3275
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3277
    :cond_1
    return-object v0
.end method

.method public scheduleTraversals()V
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    .line 794
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 804
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendEmptyMessage(I)Z

    .line 806
    :cond_0
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 2064
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2065
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 2066
    .local v1, ci:Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 2067
    .local v5, vi:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2068
    .local v4, scrollY:I
    const/4 v3, 0x0

    .line 2070
    .local v3, handled:Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    if-gt v6, v8, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v8, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v8, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v8, :cond_4

    .line 2076
    :cond_0
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 2083
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    .line 2088
    .local v2, focus:Landroid/view/View;
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eq v6, v8, :cond_2

    .line 2089
    :cond_1
    iput-object v9, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    move v6, v7

    .line 2182
    .end local v2           #focus:Landroid/view/View;
    :goto_0
    return v6

    .line 2093
    .restart local v2       #focus:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    if-eq v2, v6, :cond_3

    .line 2097
    const/4 p1, 0x0

    .line 2102
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    if-ne v2, v6, :cond_8

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v6, :cond_8

    if-nez p1, :cond_8

    .line 2168
    .end local v2           #focus:Landroid/view/View;
    :cond_4
    :goto_1
    iget v6, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v4, v6, :cond_7

    .line 2171
    if-nez p2, :cond_e

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_e

    .line 2172
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_5

    .line 2173
    new-instance v6, Landroid/widget/Scroller;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 2175
    :cond_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v9, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v9, v4, v9

    invoke-virtual {v6, v7, v8, v7, v9}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2179
    :cond_6
    :goto_2
    iput v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_7
    move v6, v3

    .line 2182
    goto :goto_0

    .line 2109
    .restart local v2       #focus:Landroid/view/View;
    :cond_8
    if-eqz v2, :cond_4

    .line 2113
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    .line 2114
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2117
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2122
    if-nez p1, :cond_b

    .line 2123
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2126
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    .line 2127
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2141
    :cond_9
    :goto_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2145
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_c

    .line 2162
    :cond_a
    :goto_4
    const/4 v3, 0x1

    goto :goto_1

    .line 2135
    :cond_b
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 2151
    :cond_c
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_d

    .line 2152
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    sub-int/2addr v6, v8

    sub-int/2addr v4, v6

    goto :goto_4

    .line 2155
    :cond_d
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_a

    .line 2157
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_4

    .line 2176
    .end local v2           #focus:Landroid/view/View;
    :cond_e
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_6

    .line 2177
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_2
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1
    .parameter "newDragTarget"

    .prologue
    .line 3566
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 3567
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3569
    :cond_0
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 5
    .parameter "attrs"
    .parameter "newView"

    .prologue
    .line 672
    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 675
    .local v1, oldSoftInputMode:I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int v0, v2, v3

    .line 677
    .local v0, compatibleWindowFlag:I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 678
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 680
    if-eqz p2, :cond_0

    .line 681
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 682
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 685
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_1

    .line 687
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 692
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 693
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 694
    monitor-exit p0

    .line 695
    return-void

    .line 694
    .end local v0           #compatibleWindowFlag:I
    .end local v1           #oldSoftInputMode:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 3455
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 3456
    return-void
.end method

.method setStopped(Z)V
    .locals 1
    .parameter "stopped"

    .prologue
    .line 763
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_0

    .line 764
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 765
    if-nez p1, :cond_0

    .line 766
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 769
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 12
    .parameter "view"
    .parameter "attrs"
    .parameter "panelParentView"

    .prologue
    .line 424
    monitor-enter p0

    .line 425
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_e

    .line 426
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 427
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, p1}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 428
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 429
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 431
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_0

    .line 432
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 434
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v1, :cond_0

    .line 435
    new-instance v1, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 436
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 440
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    .line 441
    .local v8, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 444
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v1, :cond_1

    .line 445
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 448
    :cond_1
    const/4 v11, 0x0

    .line 449
    .local v11, restore:Z
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 451
    const/4 v11, 0x1

    .line 452
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 453
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 457
    :cond_2
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 458
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 459
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 462
    :cond_3
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 463
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 464
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 465
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 466
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 467
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v1, :cond_9

    const/high16 v1, 0x3f80

    :goto_1
    iput v1, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 469
    if-eqz p3, :cond_4

    .line 470
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 473
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 479
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 480
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 482
    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :cond_5
    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 486
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v3, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .line 498
    .local v10, res:I
    if-eqz v11, :cond_6

    .line 499
    :try_start_2
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 503
    :cond_6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_7

    .line 504
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 506
    :cond_7
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 507
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 509
    if-gez v10, :cond_b

    .line 510
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 511
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 512
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 513
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 514
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 515
    packed-switch v10, :pswitch_data_0

    .line 546
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 572
    .end local v8           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v10           #res:I
    .end local v11           #restore:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 466
    .restart local v8       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v11       #restore:Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 467
    :cond_9
    :try_start_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v1, v1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 489
    :catch_0
    move-exception v9

    .line 490
    .local v9, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 492
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 494
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 495
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 496
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Adding window failed"

    invoke-direct {v1, v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 498
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_a

    .line 499
    :try_start_5
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_a
    throw v1

    .line 518
    .restart local v10       #res:I
    :pswitch_0
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid; is your activity running?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :pswitch_1
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not for an application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 526
    :pswitch_2
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- app for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 530
    :pswitch_3
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 536
    :pswitch_4
    monitor-exit p0

    .line 573
    .end local v8           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v10           #res:I
    .end local v11           #restore:Z
    :goto_2
    return-void

    .line 538
    .restart local v8       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v10       #res:I
    .restart local v11       #restore:Z
    :pswitch_5
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- another window of this type already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 542
    :pswitch_6
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- permission denied for this window type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_b
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_c

    .line 551
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 554
    :cond_c
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_d

    .line 555
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_f

    .line 556
    new-instance v1, Landroid/view/InputQueue;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-direct {v1, v2}, Landroid/view/InputQueue;-><init>(Landroid/view/InputChannel;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 557
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 564
    :cond_d
    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 565
    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 566
    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 568
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 569
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 572
    .end local v8           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v10           #res:I
    .end local v11           #restore:Z
    :cond_e
    monitor-exit p0

    goto/16 :goto_2

    .line 559
    .restart local v8       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v10       #res:I
    .restart local v11       #restore:Z
    :cond_f
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputHandler:Landroid/view/InputHandler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 565
    :cond_10
    const/4 v1, 0x0

    goto :goto_4

    .line 566
    :cond_11
    const/4 v1, 0x0

    goto :goto_5

    .line 515
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 4045
    const/4 v0, 0x0

    return v0
.end method

.method public skipNextResizedMsg()V
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    .line 2673
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mSkipResizedMsg:Z

    .line 2674
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 4049
    const/4 v0, 0x0

    return-object v0
.end method

.method terminateHardwareResources()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 587
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 589
    :cond_0
    return-void
.end method

.method public unscheduleTraversals()V
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 811
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->removeMessages(I)V

    .line 813
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 5
    .parameter "config"
    .parameter "force"

    .prologue
    .line 2295
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v3}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 2296
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_0

    .line 2297
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2298
    .end local p1
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    move-object p1, v1

    .line 2301
    .end local v1           #config:Landroid/content/res/Configuration;
    .restart local p1
    :cond_0
    sget-object v4, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2302
    :try_start_0
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 2303
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks;

    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2302
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2305
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2306
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2310
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2311
    if-nez p2, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 2312
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2313
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2316
    :cond_3
    return-void

    .line 2305
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3965
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3966
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3967
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3968
    if-eqz p2, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 3969
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 3970
    return-void

    :cond_0
    move v1, v3

    .line 3967
    goto :goto_0

    :cond_1
    move v2, v3

    .line 3968
    goto :goto_1
.end method
