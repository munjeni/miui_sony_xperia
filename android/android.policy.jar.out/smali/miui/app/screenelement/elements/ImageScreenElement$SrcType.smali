.class final enum Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;
.super Ljava/lang/Enum;
.source "ImageScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/ImageScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SrcType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

.field public static final enum ApplicationIcon:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

.field public static final enum ResourceImage:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

.field public static final enum VirtualScreen:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    const-string v1, "ResourceImage"

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ResourceImage:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    .line 105
    new-instance v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    const-string v1, "VirtualScreen"

    invoke-direct {v0, v1, v3}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->VirtualScreen:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    .line 106
    new-instance v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    const-string v1, "ApplicationIcon"

    invoke-direct {v0, v1, v4}, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ApplicationIcon:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ResourceImage:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->VirtualScreen:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->ApplicationIcon:Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->$VALUES:[Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;
    .locals 1
    .parameter "name"

    .prologue
    .line 103
    const-class v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    return-object v0
.end method

.method public static values()[Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->$VALUES:[Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    invoke-virtual {v0}, [Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/app/screenelement/elements/ImageScreenElement$SrcType;

    return-object v0
.end method
