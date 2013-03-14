.class Lorg/javia/arity/VM;
.super Ljava/lang/Object;
.source "VM.java"


# static fields
.field static final arity:[B

.field static final builtins:[B

.field static final opcodeName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x2b

    const/16 v3, 0x1a

    .line 68
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "const"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "call"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "add"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mul"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "div"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mod"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rnd"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "umin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "power"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fact"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "percent"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "sqrt"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "cbrt"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "exp"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "ln"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sin"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cos"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "tan"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "asin"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "acos"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "atan"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sinh"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "cosh"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "tanh"

    aput-object v2, v0, v1

    const-string v1, "asinh"

    aput-object v1, v0, v3

    const/16 v1, 0x1b

    const-string v2, "acosh"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "atanh"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "abs"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "floor"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "ceil"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "sign"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "min"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "max"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "gcd"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "comb"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "perm"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "load0"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "load1"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "load2"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "load3"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "load4"

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/VM;->opcodeName:[Ljava/lang/String;

    .line 70
    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/javia/arity/VM;->arity:[B

    .line 72
    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/javia/arity/VM;->builtins:[B

    return-void

    .line 70
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0xfft
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x1t
        0x2t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 72
    :array_1
    .array-data 0x1
        0xdt
        0xet
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0xft
        0x10t
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x7t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
