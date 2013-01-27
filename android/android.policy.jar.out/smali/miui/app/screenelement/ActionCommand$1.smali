.class synthetic Lmiui/app/screenelement/ActionCommand$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$app$screenelement$ActionCommand$VariableBinderCommand$Command:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 801
    invoke-static {}, Lmiui/app/screenelement/ActionCommand$VariableBinderCommand$Command;->values()[Lmiui/app/screenelement/ActionCommand$VariableBinderCommand$Command;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/app/screenelement/ActionCommand$1;->$SwitchMap$miui$app$screenelement$ActionCommand$VariableBinderCommand$Command:[I

    :try_start_0
    sget-object v0, Lmiui/app/screenelement/ActionCommand$1;->$SwitchMap$miui$app$screenelement$ActionCommand$VariableBinderCommand$Command:[I

    sget-object v1, Lmiui/app/screenelement/ActionCommand$VariableBinderCommand$Command;->Refresh:Lmiui/app/screenelement/ActionCommand$VariableBinderCommand$Command;

    invoke-virtual {v1}, Lmiui/app/screenelement/ActionCommand$VariableBinderCommand$Command;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
