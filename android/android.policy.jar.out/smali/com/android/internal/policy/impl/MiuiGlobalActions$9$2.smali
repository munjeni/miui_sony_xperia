.class Lcom/android/internal/policy/impl/MiuiGlobalActions$9$2;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions$9;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$9;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$9$2;->this$1:Lcom/android/internal/policy/impl/MiuiGlobalActions$9;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sput p2, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->rebootMode:I

    return-void
.end method
