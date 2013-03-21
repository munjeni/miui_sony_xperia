.class Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;
.super Ljava/lang/Object;
.source "AtCtsaCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtCtsaCmdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsedCtsaCmd"
.end annotation


# static fields
.field private static final LNG_PRESS_TIME:J = 0x5dcL

.field private static final PRESS_TIME:J = 0xc8L


# instance fields
.field private mEvents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

.field final synthetic this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/atfwd/AtCtsaCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    .locals 1
    .parameter
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;,
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;
        }
    .end annotation

    .prologue
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->parse_cmd()V

    return-void
.end method

.method private addClick(FFJ)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "presstime"

    .prologue
    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    move-wide v2, v0

    move v5, p1

    move v6, p2

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .local v8, evt:Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    new-instance v1, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    invoke-direct {v1, p3, p4}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private parse_cmd()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;,
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .local v11, ctsaAction:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .local v3, time:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    invoke-virtual {v5}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v18

    .local v18, tokens:[Ljava/lang/String;
    const-wide/16 v16, 0xc8

    .local v16, presstime:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->this$0:Lcom/android/internal/atfwd/AtCtsaCmdHandler;

    iget-object v5, v5, Lcom/android/internal/atfwd/AtCtsaCmdHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .local v12, dm:Landroid/util/DisplayMetrics;
    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    .local v19, width:I
    iget v15, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v15, height:I
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    array-length v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    :cond_0
    new-instance v5, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    const-string v6, "Must provide three tokens"

    invoke-direct {v5, v6}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v18, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .local v8, x:F
    const/4 v5, 0x2

    aget-object v5, v18, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .local v9, y:F
    move/from16 v0, v19

    int-to-float v5, v0

    cmpl-float v5, v8, v5

    if-gtz v5, :cond_2

    int-to-float v5, v15

    cmpl-float v5, v9, v5

    if-lez v5, :cond_3

    :cond_2
    new-instance v5, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;

    invoke-direct {v5}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v8           #x:F
    .end local v9           #y:F
    :catch_0
    move-exception v13

    .local v13, e:Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    invoke-direct {v5, v13}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v8       #x:F
    .restart local v9       #y:F
    :cond_3
    packed-switch v11, :pswitch_data_0

    :try_start_1
    new-instance v5, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;

    invoke-direct {v5}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;-><init>()V

    throw v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v8           #x:F
    .end local v9           #y:F
    :catch_1
    move-exception v13

    .local v13, e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;
    throw v13

    .end local v13           #e:Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;
    .restart local v8       #x:F
    .restart local v9       #y:F
    :pswitch_0
    const/4 v7, 0x1

    const/4 v10, 0x0

    move-wide v5, v3

    :try_start_2
    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .local v14, evt:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v5, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .end local v14           #evt:Landroid/view/MotionEvent;
    :goto_0
    const/4 v5, 0x0

    cmpl-float v5, v5, v8

    if-gtz v5, :cond_4

    const/4 v5, 0x0

    cmpl-float v5, v5, v9

    if-lez v5, :cond_5

    :cond_4
    new-instance v5, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;

    invoke-direct {v5}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException;-><init>()V

    throw v5

    :pswitch_1
    const/4 v7, 0x0

    const/4 v10, 0x0

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v14

    .restart local v14       #evt:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    invoke-virtual {v5, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v14           #evt:Landroid/view/MotionEvent;
    :pswitch_2
    const-wide/16 v16, 0x5dc

    :pswitch_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->addClick(FFJ)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->addClick(FFJ)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    new-instance v6, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-long v0, v7

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-direct {v6, v0, v1}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v8, v9, v1, v2}, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->addClick(FFJ)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParametersException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getEvents()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mEvents:Ljava/util/Vector;

    return-object v0
.end method

.method public getOriginalCommand()Lcom/android/internal/atfwd/AtCmd;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCtsaCmdHandler$ParsedCtsaCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    return-object v0
.end method
