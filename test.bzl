def _test_volatile_status_impl(ctx):
    ctx.action(
        inputs = [ctx.version_file],
        outputs = [ctx.outputs.artifact],
        command = "cp %s %s" % (ctx.version_file.path, ctx.outputs.artifact.path),
    )

test_volatile_status = rule(
    implementation = _test_volatile_status_impl,
    outputs = {
        "artifact": "%{name}.txt",
    },
)
