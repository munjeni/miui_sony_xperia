.class synthetic Lmiui/app/screenelement/elements/ImageScreenElement$1;
.super Ljava/lang/Object;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/ImageScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$miui$app$screenelement$elements$ImageScreenElement$SrcType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->values()[Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmiui/app/screenelement/elements/ImageScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ImageScreenElement$SrcType:[I

    :try_start_0
    sget-object v0, Lmiui/app/screenelement/elements/ImageScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ImageScreenElement$SrcType:[I

    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->VirtualScreen:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    invoke-virtual {v1}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lmiui/app/screenelement/elements/ImageScreenElement$1;->$SwitchMap$miui$app$screenelement$elements$ImageScreenElement$SrcType:[I

    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ApplicationIcon:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    invoke-virtual {v1}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
