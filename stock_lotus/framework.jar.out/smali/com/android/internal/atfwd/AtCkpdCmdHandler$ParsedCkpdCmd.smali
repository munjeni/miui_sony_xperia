.class Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
.super Ljava/lang/Object;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/atfwd/AtCkpdCmdHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParsedCkpdCmd"
.end annotation


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

.field private mPauseTime:J

.field private mPressTime:J

.field final synthetic this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;Lcom/android/internal/atfwd/AtCmd;)V
    .locals 2
    .parameter
    .parameter "cmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    .line 86
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    .line 87
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    .line 88
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    .line 89
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->parse_cmd()V

    .line 90
    return-void
.end method

.method private parse_cmd()V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;
        }
    .end annotation

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mOriginalCommand:Lcom/android/internal/atfwd/AtCmd;

    invoke-virtual {v2}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v29

    .line 101
    .local v29, tokens:[Ljava/lang/String;
    if-eqz v29, :cond_0

    move-object/from16 v0, v29

    array-length v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    .line 102
    :cond_0
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    const-string v3, "Must provide 1 to three tokens"

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v24

    .line 105
    .local v24, keys:[C
    const/4 v2, 0x0

    aget-object v2, v29, v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v27

    .line 108
    .local v27, orig:[C
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 111
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_2
    move-object/from16 v0, v29

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 119
    const/4 v2, 0x2

    :try_start_1
    aget-object v2, v29, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :cond_3
    const/16 v26, 0x0

    .line 126
    .local v26, manufSpecific:Z
    const/16 v22, 0x0

    .line 127
    .local v22, instring:Z
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v28, theString:Ljava/lang/StringBuilder;
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v20

    if-ge v0, v2, :cond_d

    .line 129
    if-eqz v22, :cond_6

    .line 130
    aget-char v2, v24, v20

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_5

    .line 131
    const/16 v22, 0x0

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    iget-object v2, v2, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mKcm:Landroid/view/KeyCharacterMap;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v19

    .line 133
    .local v19, events:[Landroid/view/KeyEvent;
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 134
    if-eqz v19, :cond_4

    .line 135
    move-object/from16 v17, v19

    .local v17, arr$:[Landroid/view/KeyEvent;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    aget-object v23, v17, v21

    .line 136
    .local v23, keyEvent:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 112
    .end local v17           #arr$:[Landroid/view/KeyEvent;
    .end local v19           #events:[Landroid/view/KeyEvent;
    .end local v20           #i:I
    .end local v21           #i$:I
    .end local v22           #instring:Z
    .end local v23           #keyEvent:Landroid/view/KeyEvent;
    .end local v25           #len$:I
    .end local v26           #manufSpecific:Z
    .end local v28           #theString:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v18

    .line 113
    .local v18, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong arg2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v29, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    .end local v18           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v18

    .line 121
    .restart local v18       #e:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong arg3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v29, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    .end local v18           #e:Ljava/lang/NumberFormatException;
    .restart local v19       #events:[Landroid/view/KeyEvent;
    .restart local v20       #i:I
    .restart local v22       #instring:Z
    .restart local v26       #manufSpecific:Z
    .restart local v28       #theString:Ljava/lang/StringBuilder;
    :cond_4
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find all keycodes for string \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    .end local v19           #events:[Landroid/view/KeyEvent;
    :cond_5
    aget-char v2, v27, v20

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    :cond_6
    if-eqz v26, :cond_8

    .line 150
    aget-char v2, v24, v20

    sparse-switch v2, :sswitch_data_0

    .line 165
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, v24, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :sswitch_0
    const/16 v8, 0x51

    .line 169
    .local v8, iKeyCode:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v2, Landroid/view/KeyEvent;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v10, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v2, Landroid/view/KeyEvent;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v10, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 174
    const/16 v26, 0x0

    .line 128
    .end local v8           #iKeyCode:I
    :cond_7
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 157
    :sswitch_1
    const/4 v8, 0x3

    .line 158
    .restart local v8       #iKeyCode:I
    goto :goto_2

    .line 162
    .end local v8           #iKeyCode:I
    :sswitch_2
    const/16 v8, 0x17

    .line 163
    .restart local v8       #iKeyCode:I
    goto :goto_2

    .line 178
    .end local v8           #iKeyCode:I
    :cond_8
    aget-char v2, v24, v20

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_9

    .line 179
    const/16 v22, 0x1

    .line 180
    goto :goto_3

    .line 184
    :cond_9
    const/16 v2, 0x3a

    aget-char v3, v24, v20

    if-ne v2, v3, :cond_a

    .line 185
    const/16 v26, 0x1

    .line 186
    goto :goto_3

    .line 188
    :cond_a
    aget-char v2, v24, v20

    const/16 v3, 0x22

    if-eq v2, v3, :cond_7

    .line 190
    aget-char v2, v24, v20

    const/16 v3, 0x57

    if-ne v2, v3, :cond_b

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 196
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/HashMap;

    move-result-object v2

    aget-char v3, v24, v20

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 197
    new-instance v2, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, v27, v20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/atfwd/AtCmdHandler$AtCmdParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v9, Landroid/view/KeyEvent;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/HashMap;

    move-result-object v2

    aget-char v4, v24, v20

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v3, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v9, Landroid/view/KeyEvent;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->key2keycode:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$000(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/HashMap;

    move-result-object v2

    aget-char v4, v24, v20

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v3, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPressTime:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    new-instance v3, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mPauseTime:J

    invoke-direct {v3, v4, v5}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 204
    :cond_d
    return-void

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x48 -> :sswitch_1
        0x4a -> :sswitch_2
        0x68 -> :sswitch_1
        0x6a -> :sswitch_2
    .end sparse-switch
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
    .line 93
    iget-object v0, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->mEvents:Ljava/util/Vector;

    return-object v0
.end method
