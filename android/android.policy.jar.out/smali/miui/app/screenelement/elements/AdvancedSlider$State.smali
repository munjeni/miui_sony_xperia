.class final enum Lmiui/app/screenelement/elements/AdvancedSlider$State;
.super Ljava/lang/Enum;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/app/screenelement/elements/AdvancedSlider$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/app/screenelement/elements/AdvancedSlider$State;

.field public static final enum Invalid:Lmiui/app/screenelement/elements/AdvancedSlider$State;

.field public static final enum Normal:Lmiui/app/screenelement/elements/AdvancedSlider$State;

.field public static final enum Pressed:Lmiui/app/screenelement/elements/AdvancedSlider$State;

.field public static final enum Reached:Lmiui/app/screenelement/elements/AdvancedSlider$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    new-instance v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lmiui/app/screenelement/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Normal:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    new-instance v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;

    const-string v1, "Pressed"

    invoke-direct {v0, v1, v3}, Lmiui/app/screenelement/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Pressed:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    new-instance v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;

    const-string v1, "Reached"

    invoke-direct {v0, v1, v4}, Lmiui/app/screenelement/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Reached:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    new-instance v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;

    const-string v1, "Invalid"

    invoke-direct {v0, v1, v5}, Lmiui/app/screenelement/elements/AdvancedSlider$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Invalid:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    .line 263
    const/4 v0, 0x4

    new-array v0, v0, [Lmiui/app/screenelement/elements/AdvancedSlider$State;

    sget-object v1, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Normal:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Pressed:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Reached:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/app/screenelement/elements/AdvancedSlider$State;->Invalid:Lmiui/app/screenelement/elements/AdvancedSlider$State;

    aput-object v1, v0, v5

    sput-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->$VALUES:[Lmiui/app/screenelement/elements/AdvancedSlider$State;

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
    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/app/screenelement/elements/AdvancedSlider$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 263
    const-class v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;

    return-object v0
.end method

.method public static values()[Lmiui/app/screenelement/elements/AdvancedSlider$State;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lmiui/app/screenelement/elements/AdvancedSlider$State;->$VALUES:[Lmiui/app/screenelement/elements/AdvancedSlider$State;

    invoke-virtual {v0}, [Lmiui/app/screenelement/elements/AdvancedSlider$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/app/screenelement/elements/AdvancedSlider$State;

    return-object v0
.end method
