.class public Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "BackupSelectionUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x3a98

.field private static final DEBUG:Z = false

.field private static final GOOGLE_ACCOUNT:I = 0x1

.field private static final LOCK_SCREEN_TAG:Ljava/lang/String; = "BackupSelectionUnlockScreen"

.field private static final SECURITY_QUESTION:I


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mEmergencyCall:Landroid/widget/Button;

.field private final mKeyboardOpen:Z

.field private final mListView:Landroid/widget/ListView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mNextButton:Landroid/widget/Button;

.field private mSelectedPosition:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 3
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mSelectedPosition:I

    .line 82
    iput-object p2, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 83
    iput-object p3, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 84
    iput-object p4, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->isKeyboardOpen(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mKeyboardOpen:Z

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109004f

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    const v0, 0x1020292

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mListView:Landroid/widget/ListView;

    .line 92
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->populateList(Landroid/content/Context;)V

    .line 104
    const v0, 0x1020293

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mNextButton:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 109
    const v0, 0x102028a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mSelectedPosition:I

    return p1
.end method

.method private isKeyboardOpen(Landroid/content/res/Configuration;)Z
    .locals 2
    .parameter "configuration"

    .prologue
    const/4 v0, 0x1

    .line 200
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private populateList(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    .line 114
    new-array v4, v12, [Ljava/lang/String;

    const-string v1, "heading"

    aput-object v1, v4, v11

    const-string v1, "text"

    aput-object v1, v4, v13

    .line 115
    .local v4, fromKeys:[Ljava/lang/String;
    new-array v5, v12, [I

    fill-array-data v5, :array_0

    .line 117
    .local v5, toIds:[I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 118
    .local v7, firstRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v9, secondRow:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-array v10, v12, [Ljava/lang/String;

    const v1, 0x10400c3

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v11

    const v1, 0x10400c4

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v13

    .line 127
    .local v10, securityValues:[Ljava/lang/String;
    new-array v6, v12, [Ljava/lang/String;

    const v1, 0x10400c5

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    const v1, 0x10400c6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v13

    .line 134
    .local v6, accountValues:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, pos:I
    :goto_0
    if-ge v8, v12, :cond_0

    .line 135
    aget-object v1, v4, v8

    aget-object v11, v10, v8

    invoke-virtual {v7, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    aget-object v1, v4, v8

    aget-object v11, v6, v8

    invoke-virtual {v9, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 138
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const v3, 0x1090050

    .line 143
    .local v3, id:I
    new-instance v0, Landroid/widget/SimpleAdapter;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 144
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    return-void

    .line 115
    :array_0
    .array-data 0x4
        0x5at 0x2t 0x2t 0x1t
        0x5bt 0x2t 0x2t 0x1t
    .end array-data
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 194
    :goto_0
    const/4 v0, 0x1

    .line 196
    :goto_1
    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTemporarilyLocked(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 196
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 212
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->updateConfiguration()V

    .line 214
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x3a98

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 169
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mNextButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 170
    iget v0, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mSelectedPosition:I

    .line 171
    .local v0, clickedPos:I
    if-nez v0, :cond_2

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->Question:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPatternUnlocker(Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;)V

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 179
    .end local v0           #clickedPos:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 182
    :cond_1
    return-void

    .line 174
    .restart local v0       #clickedPos:I
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;->Account:Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPatternUnlocker(Lcom/android/internal/widget/LockPatternUtils$PatternUnlockMode;)V

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfiguration"

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->updateConfiguration()V

    .line 221
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public updateConfiguration()V
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 205
    .local v0, newConfiguration:Landroid/content/res/Configuration;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->isKeyboardOpen(Landroid/content/res/Configuration;)Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mKeyboardOpen:Z

    if-eq v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/internal/policy/impl/BackupSelectionUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 208
    :cond_0
    return-void
.end method
