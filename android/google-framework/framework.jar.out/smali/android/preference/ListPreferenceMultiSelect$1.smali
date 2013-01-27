.class Landroid/preference/ListPreferenceMultiSelect$1;
.super Ljava/lang/Object;
.source "ListPreferenceMultiSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/ListPreferenceMultiSelect;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/ListPreferenceMultiSelect;


# direct methods
.method constructor <init>(Landroid/preference/ListPreferenceMultiSelect;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Landroid/preference/ListPreferenceMultiSelect$1;->this$0:Landroid/preference/ListPreferenceMultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/preference/ListPreferenceMultiSelect$1;->this$0:Landroid/preference/ListPreferenceMultiSelect;

    #getter for: Landroid/preference/ListPreferenceMultiSelect;->mClickedDialogEntryIndices:[Z
    invoke-static {v0}, Landroid/preference/ListPreferenceMultiSelect;->access$000(Landroid/preference/ListPreferenceMultiSelect;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 61
    return-void
.end method
