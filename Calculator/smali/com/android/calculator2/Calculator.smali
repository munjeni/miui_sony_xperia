.class public Lcom/android/calculator2/Calculator;
.super Landroid/app/Activity;
.source "Calculator.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/calculator2/Logic$Listener;


# instance fields
.field private mDisplay:Lcom/android/calculator2/CalculatorDisplay;

.field private mHistory:Lcom/android/calculator2/History;

.field mIsScientific:Z

.field mListener:Lcom/android/calculator2/EventListener;

.field private mLogic:Lcom/android/calculator2/Logic;

.field private mNeedChangePad:Z

.field private mPadView:Landroid/widget/FrameLayout;

.field private mPersist:Lcom/android/calculator2/Persist;

.field private mScientificPad:Landroid/view/View;

.field private mSimplePad:Landroid/view/View;

.field private mStyleSwitch:Lmiui/widget/SlidingButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/calculator2/EventListener;

    invoke-direct {v0}, Lcom/android/calculator2/EventListener;-><init>()V

    iput-object v0, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calculator2/Calculator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->mNeedChangePad:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/calculator2/Calculator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/calculator2/Calculator;->mNeedChangePad:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/calculator2/Calculator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/calculator2/Calculator;->changePad()V

    return-void
.end method

.method private changePad()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 268
    iget-boolean v0, p0, Lcom/android/calculator2/Calculator;->mIsScientific:Z

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static log(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 261
    return-void
.end method


# virtual methods
.method public changeAnimation(Z)V
    .locals 19
    .parameter "toSimple"

    .prologue
    .line 119
    const/4 v3, 0x2

    new-array v10, v3, [I

    .line 120
    .local v10, from:[I
    const/4 v3, 0x2

    new-array v14, v3, [I

    .line 121
    .local v14, to:[I
    invoke-virtual/range {p0 .. p0}, Lcom/android/calculator2/Calculator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f050002

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 123
    .local v13, scientificButtons:Landroid/content/res/TypedArray;
    if-nez p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calculator2/Calculator;->mIsScientific:Z

    .line 124
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/calculator2/Calculator;->mIsScientific:Z

    if-eqz v3, :cond_1

    .line 125
    const v3, 0x7f0c002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/calculator2/Calculator;->mNeedChangePad:Z

    .line 130
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v12, v3, :cond_6

    .line 131
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v9, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 133
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    if-eqz p1, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v13, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 135
    .local v11, fromView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v13, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 141
    .local v15, toView:Landroid/view/View;
    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 142
    invoke-virtual {v15, v14}, Landroid/view/View;->getLocationInWindow([I)V

    .line 143
    const/4 v3, 0x0

    aget v3, v14, v3

    const/4 v5, 0x0

    aget v5, v10, v5

    sub-int/2addr v3, v5

    int-to-float v0, v3

    move/from16 v16, v0

    .line 144
    .local v16, toX:F
    const/4 v3, 0x1

    aget v3, v14, v3

    const/4 v5, 0x1

    aget v5, v10, v5

    sub-int/2addr v3, v5

    int-to-float v0, v3

    move/from16 v17, v0

    .line 145
    .local v17, toY:F
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v4, v3, v5

    .line 146
    .local v4, toW:F
    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v6, v3, v5

    .line 147
    .local v6, toH:F
    const/16 v18, 0x0

    .line 148
    .local v18, translateAnimation:Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 150
    .local v2, scaleAnimation:Landroid/view/animation/Animation;
    const/16 v3, 0xa

    if-ne v12, v3, :cond_4

    .line 151
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/calculator2/Calculator;->specialAnimation(ZZ)V

    .line 152
    if-eqz p1, :cond_3

    .line 153
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18           #translateAnimation:Landroid/view/animation/Animation;
    const/4 v3, 0x0

    div-float v5, v16, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 154
    .restart local v18       #translateAnimation:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2           #scaleAnimation:Landroid/view/animation/Animation;
    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v7, 0x0

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 168
    .restart local v2       #scaleAnimation:Landroid/view/animation/Animation;
    :goto_4
    const-wide/16 v7, 0x96

    invoke-virtual {v2, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 169
    const-wide/16 v7, 0x96

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 171
    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 172
    new-instance v3, Lcom/android/calculator2/Calculator$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/android/calculator2/Calculator$1;-><init>(Lcom/android/calculator2/Calculator;Landroid/view/View;)V

    invoke-virtual {v9, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 191
    invoke-virtual {v11, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 123
    .end local v2           #scaleAnimation:Landroid/view/animation/Animation;
    .end local v4           #toW:F
    .end local v6           #toH:F
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    .end local v11           #fromView:Landroid/view/View;
    .end local v12           #i:I
    .end local v15           #toView:Landroid/view/View;
    .end local v16           #toX:F
    .end local v17           #toY:F
    .end local v18           #translateAnimation:Landroid/view/animation/Animation;
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 127
    :cond_1
    const v3, 0x7f0c002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 137
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    .restart local v12       #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v13, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 138
    .restart local v11       #fromView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v13, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .restart local v15       #toView:Landroid/view/View;
    goto/16 :goto_3

    .line 156
    .restart local v2       #scaleAnimation:Landroid/view/animation/Animation;
    .restart local v4       #toW:F
    .restart local v6       #toH:F
    .restart local v16       #toX:F
    .restart local v17       #toY:F
    .restart local v18       #translateAnimation:Landroid/view/animation/Animation;
    :cond_3
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18           #translateAnimation:Landroid/view/animation/Animation;
    const/4 v3, 0x0

    div-float v5, v16, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    const v8, 0x7f0c002a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 158
    .restart local v18       #translateAnimation:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2           #scaleAnimation:Landroid/view/animation/Animation;
    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v2       #scaleAnimation:Landroid/view/animation/Animation;
    goto/16 :goto_4

    .line 162
    :cond_4
    if-nez v12, :cond_5

    .line 163
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/calculator2/Calculator;->specialAnimation(ZZ)V

    .line 165
    :cond_5
    new-instance v18, Landroid/view/animation/TranslateAnimation;

    .end local v18           #translateAnimation:Landroid/view/animation/Animation;
    const/4 v3, 0x0

    div-float v5, v16, v4

    const/4 v7, 0x0

    div-float v8, v17, v6

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 166
    .restart local v18       #translateAnimation:Landroid/view/animation/Animation;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    .end local v2           #scaleAnimation:Landroid/view/animation/Animation;
    const/high16 v3, 0x3f80

    const/high16 v5, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v2       #scaleAnimation:Landroid/view/animation/Animation;
    goto/16 :goto_4

    .line 193
    .end local v2           #scaleAnimation:Landroid/view/animation/Animation;
    .end local v4           #toW:F
    .end local v6           #toH:F
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    .end local v11           #fromView:Landroid/view/View;
    .end local v15           #toView:Landroid/view/View;
    .end local v16           #toX:F
    .end local v17           #toY:F
    .end local v18           #translateAnimation:Landroid/view/animation/Animation;
    :cond_6
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 115
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/calculator2/Calculator;->changeAnimation(Z)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/high16 v2, 0x2

    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/calculator2/Calculator;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 69
    const v1, 0x7f040001

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->setContentView(I)V

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/calculator2/Calculator;->mIsScientific:Z

    .line 71
    const v1, 0x7f0c0006

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mStyleSwitch:Lmiui/widget/SlidingButton;

    .line 72
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mStyleSwitch:Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mStyleSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    :cond_0
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mPadView:Landroid/widget/FrameLayout;

    .line 76
    const v1, 0x7f040003

    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPadView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 78
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPadView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    const v1, 0x7f040002

    invoke-static {p0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 81
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    const v2, 0x7f0c0029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPadView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 83
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 84
    new-instance v1, Lcom/android/calculator2/Persist;

    invoke-direct {v1, p0}, Lcom/android/calculator2/Persist;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    .line 85
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v1}, Lcom/android/calculator2/Persist;->load()V

    .line 87
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    iget-object v1, v1, Lcom/android/calculator2/Persist;->history:Lcom/android/calculator2/History;

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    .line 89
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calculator2/CalculatorDisplay;

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    .line 90
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const v1, 0x7f0c0002

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/CalculatorDisplay;->setHistory(Landroid/widget/TextView;)V

    .line 91
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const v1, 0x7f0c0005

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/CalculatorDisplay;->setDisplayText(Landroid/widget/TextView;)V

    .line 92
    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    const v1, 0x7f0c0003

    invoke-virtual {p0, v1}, Lcom/android/calculator2/Calculator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/CalculatorDisplay;->setEqualText(Landroid/widget/TextView;)V

    .line 93
    new-instance v1, Lcom/android/calculator2/Logic;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v3, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/calculator2/Logic;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/CalculatorDisplay;)V

    iput-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    .line 94
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v1, p0}, Lcom/android/calculator2/Logic;->setListener(Lcom/android/calculator2/Logic$Listener;)V

    .line 96
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v2}, Lcom/android/calculator2/Persist;->getDeleteMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/Logic;->setDeleteMode(I)V

    .line 97
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    invoke-virtual {v2}, Lcom/android/calculator2/CalculatorDisplay;->getMaxDigits()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/calculator2/Logic;->setLineLength(I)V

    .line 99
    new-instance v0, Lcom/android/calculator2/HistoryAdapter;

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/calculator2/HistoryAdapter;-><init>(Landroid/content/Context;Lcom/android/calculator2/History;Lcom/android/calculator2/Logic;)V

    .line 100
    .local v0, historyAdapter:Lcom/android/calculator2/HistoryAdapter;
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mHistory:Lcom/android/calculator2/History;

    invoke-virtual {v1, v0}, Lcom/android/calculator2/History;->setObserver(Landroid/widget/BaseAdapter;)V

    .line 102
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v1, v2, v4}, Lcom/android/calculator2/EventListener;->setHandler(Lcom/android/calculator2/Logic;Landroid/support/v4/view/ViewPager;)V

    .line 103
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mDisplay:Lcom/android/calculator2/CalculatorDisplay;

    iget-object v2, p0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    invoke-virtual {v1, v2}, Lcom/android/calculator2/CalculatorDisplay;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 105
    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v1}, Lcom/android/calculator2/Logic;->resumeWithHistory()V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public onDeleteModeChange()V
    .locals 0

    .prologue
    .line 265
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 252
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v0}, Lcom/android/calculator2/Logic;->updateHistory()V

    .line 253
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    iget-object v1, p0, Lcom/android/calculator2/Calculator;->mLogic:Lcom/android/calculator2/Logic;

    invoke-virtual {v1}, Lcom/android/calculator2/Logic;->getDeleteMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/calculator2/Persist;->setDeleteMode(I)V

    .line 254
    iget-object v0, p0, Lcom/android/calculator2/Calculator;->mPersist:Lcom/android/calculator2/Persist;

    invoke-virtual {v0}, Lcom/android/calculator2/Persist;->save()V

    .line 255
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method public specialAnimation(ZZ)V
    .locals 13
    .parameter "toSimple"
    .parameter "isDigitZero"

    .prologue
    .line 198
    const/4 v9, 0x2

    new-array v3, v9, [I

    .line 199
    .local v3, from:[I
    const/4 v9, 0x2

    new-array v5, v9, [I

    .line 200
    .local v5, to:[I
    if-eqz p1, :cond_1

    .line 201
    if-eqz p2, :cond_0

    .line 202
    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    const v10, 0x7f0c0024

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 203
    .local v4, fromSpecialView:Landroid/view/View;
    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    const v10, 0x7f0c0029

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 217
    .local v6, toSpecialView:Landroid/view/View;
    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 218
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 219
    const/4 v9, 0x0

    aget v9, v5, v9

    const/4 v10, 0x0

    aget v10, v3, v10

    sub-int/2addr v9, v10

    int-to-float v7, v9

    .line 220
    .local v7, toZeroX:F
    const/4 v9, 0x1

    aget v9, v5, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    sub-int/2addr v9, v10

    int-to-float v8, v9

    .line 221
    .local v8, toZeroY:F
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v2, v9

    .line 222
    .local v2, delteY:F
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    int-to-float v1, v9

    .line 224
    .local v1, delteX:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    add-float v10, v7, v1

    const/4 v11, 0x0

    add-float v12, v8, v2

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 226
    .local v0, btnTextAnimation:Landroid/view/animation/Animation;
    new-instance v9, Lcom/android/calculator2/Calculator$2;

    invoke-direct {v9, p0, v4}, Lcom/android/calculator2/Calculator$2;-><init>(Lcom/android/calculator2/Calculator;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 240
    const-wide/16 v9, 0x96

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 241
    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 242
    return-void

    .line 205
    .end local v0           #btnTextAnimation:Landroid/view/animation/Animation;
    .end local v1           #delteX:F
    .end local v2           #delteY:F
    .end local v4           #fromSpecialView:Landroid/view/View;
    .end local v6           #toSpecialView:Landroid/view/View;
    .end local v7           #toZeroX:F
    .end local v8           #toZeroY:F
    :cond_0
    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    const v10, 0x7f0c0027

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 206
    .restart local v4       #fromSpecialView:Landroid/view/View;
    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    const v10, 0x7f0c002a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .restart local v6       #toSpecialView:Landroid/view/View;
    goto :goto_0

    .line 209
    .end local v4           #fromSpecialView:Landroid/view/View;
    .end local v6           #toSpecialView:Landroid/view/View;
    :cond_1
    if-eqz p2, :cond_2

    .line 210
    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    const v10, 0x7f0c0029

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 211
    .restart local v4       #fromSpecialView:Landroid/view/View;
    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    const v10, 0x7f0c0024

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .restart local v6       #toSpecialView:Landroid/view/View;
    goto :goto_0

    .line 213
    .end local v4           #fromSpecialView:Landroid/view/View;
    .end local v6           #toSpecialView:Landroid/view/View;
    :cond_2
    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mSimplePad:Landroid/view/View;

    const v10, 0x7f0c002a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 214
    .restart local v4       #fromSpecialView:Landroid/view/View;
    iget-object v9, p0, Lcom/android/calculator2/Calculator;->mScientificPad:Landroid/view/View;

    const v10, 0x7f0c0027

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .restart local v6       #toSpecialView:Landroid/view/View;
    goto/16 :goto_0
.end method
