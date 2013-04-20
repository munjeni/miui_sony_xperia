.class Lcom/android/internal/policy/impl/GlobalActions$8;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createProfileDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;

.field final synthetic val$profiles:[Landroid/app/Profile;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;[Landroid/app/Profile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->val$profiles:[Landroid/app/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 313
    if-gez p2, :cond_0

    .line 316
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$8;->val$profiles:[Landroid/app/Profile;

    aget-object v1, v1, p2

    #setter for: Lcom/android/internal/policy/impl/GlobalActions;->mChosenProfile:Landroid/app/Profile;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$802(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/Profile;)Landroid/app/Profile;

    goto :goto_0
.end method
